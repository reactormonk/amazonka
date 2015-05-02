{-# LANGUAGE DeriveGeneric          #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE LambdaCase             #-}
{-# LANGUAGE MultiParamTypeClasses  #-}
{-# LANGUAGE OverloadedStrings      #-}
{-# LANGUAGE RecordWildCards        #-}
{-# LANGUAGE StandaloneDeriving     #-}
{-# LANGUAGE TemplateHaskell        #-}

-- Module      : Compiler.AST
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla xtPublic License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Compiler.AST where

import           Compiler.AST.URI
import           Compiler.TH
import           Compiler.Types
import           Control.Lens                 hiding ((.=))
import           Data.Aeson                   (ToJSON (..), object, (.=))
import qualified Data.Aeson                   as A
import           Data.CaseInsensitive         (CI)
import           Data.Jason                   hiding (Bool, ToJSON (..), object,
                                               (.=))
import           Data.Monoid                  hiding (Product, Sum)
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import           GHC.Generics                 (Generic)
import           Language.Haskell.Exts.Syntax (Decl, Name)
import           Numeric.Natural

data Signature
    = V2
    | V3
    | V3HTTPS
    | V4
    | S3
      deriving (Eq, Show, Generic)

instance FromJSON Signature where
    parseJSON = gParseJSON' lower

instance ToJSON Signature where
    toJSON = gToJSON' lower

data Protocol
    = JSON
    | RestJSON
    | XML
    | RestXML
    | Query
    | EC2
      deriving (Eq, Show, Generic)

instance FromJSON Protocol where
    parseJSON = gParseJSON' spinal

instance ToJSON Protocol where
    toJSON = gToJSON' spinal

data Timestamp
    = RFC822
    | ISO8601
    | POSIX
      deriving (Eq, Show, Generic)

instance FromJSON Timestamp where
    parseJSON = withText "timestamp" $ \case
        "rfc822"        -> pure RFC822
        "iso8601"       -> pure ISO8601
        "unixTimestamp" -> pure POSIX
        e               -> fail ("Unknown Timestamp: " ++ Text.unpack e)

instance ToJSON Timestamp where
    toJSON = gToJSON' lower

data Checksum
    = MD5
    | SHA256
      deriving (Eq, Show, Generic)

instance FromJSON Checksum where
    parseJSON = gParseJSON' lower

instance ToJSON Checksum where
    toJSON = gToJSON' lower

data Location
    = Headers
    | Header
    | URI
    | Querystring
    | StatusCode
    | Body
      deriving (Eq, Show, Generic)

instance FromJSON Location where
    parseJSON = gParseJSON' camel

data Method
    = GET
    | POST
    | HEAD
    | PUT
    | DELETE
      deriving (Eq, Show, Generic)

instance FromJSON Method where
    parseJSON = gParseJSON' upper

data XML = XML'
    { _xmlPrefix :: Text
    , _xmlUri    :: Text
    } deriving (Eq, Show, Generic)

makeClassy ''XML

instance FromJSON XML where
    parseJSON = gParseJSON' $ camel { lenses = True }

data Ref f = Ref
    { _refShape         :: Text
    , _refDocumentation :: f Help
    , _refLocation      :: f Location
    , _refLocationName  :: f Text
    , _refQueryName     :: f Text
    , _refStreaming     :: !Bool
    , _refWrapper       :: !Bool
    , _refXMLAttribute  :: !Bool
    , _refXMLNamespace  :: f XML
    } deriving (Generic)

makeLenses ''Ref

instance FromJSON (Ref Maybe) where
    parseJSON = withObject "ref" $ \o -> Ref
        <$> o .:  "shape"
        <*> o .:? "documentation"
        <*> o .:? "location"
        <*> o .:? "locationName"
        <*> o .:? "queryName"
        <*> o .:? "streaming"    .!= False
        <*> o .:? "wrapper"      .!= False
        <*> o .:? "xmlAttribute" .!= False
        <*> o .:? "xmlnamespace"

instance HasXML (Ref Identity) where
    xML = refXMLNamespace . _Wrapped

data Info f = Info
    { _infoDocumentation :: f Help
    , _infoMin           :: !Natural
    , _infoMax           :: Maybe Natural
    , _infoFlattened     :: !Bool
    , _infoSensitive     :: !Bool
    , _infoStreaming     :: !Bool
    , _infoException     :: !Bool
    } deriving (Generic)

makeClassy ''Info

instance FromJSON (Info Maybe) where
    parseJSON = withObject "info" $ \o -> Info
        <$> o .:? "documentation"
        <*> o .:? "min"       .!= 0
        <*> o .:? "max"
        <*> o .:? "flattened" .!= False
        <*> o .:? "sensitive" .!= False
        <*> o .:? "streaming" .!= False
        <*> o .:? "exception" .!= False

data Lit
    = Int
    | Long
    | Double
    | Text
    | Blob
    | Time
    | Bool

class HasRefs f a | a -> f where
    references :: Traversal' a (Ref f)

data Struct f = Struct'
    { _members  :: Map Text (Ref f)
    , _required :: Set (CI Text)
    , _payload  :: Maybe (CI Text)
    }

makeLenses ''Struct

instance HasRefs f (Struct f) where
    references = members . each

instance FromJSON (Struct Maybe) where
    parseJSON = withObject "struct" $ \o -> Struct'
        <$> o .:  "members"
        <*> o .:? "required" .!= mempty
        <*> o .:? "payload"

data Shape f
    = List   (Info f) (Ref f)
    | Map    (Info f) (Ref f) (Ref f)
    | Struct (Info f) (Struct f)
    | Enum   (Info f) (Map Text Text)
    | Lit    (Info f) Lit

makePrisms ''Shape

instance HasRefs f (Shape f) where
    references f = \case
        List   i e   -> List   i <$> f e
        Map    i k v -> Map    i <$> f k <*> f v
        Struct i s   -> Struct i <$> references f s
        s            -> pure s

fields :: Traversal' (Shape f) (Text, Ref f)
fields = _Struct . _2 . members . traverseKV

values :: Traversal' (Shape f) (Text, Text)
values = _Enum . _2 . traverseKV

instance HasInfo (Shape f) f where
    info = lens f (flip g)
      where
        f = \case
            List   i _   -> i
            Map    i _ _ -> i
            Struct i _   -> i
            Enum   i _   -> i
            Lit    i _   -> i

        g i = \case
            List   _ e   -> List   i e
            Map    _ k v -> Map    i k v
            Struct _ s   -> Struct i s
            Enum   _ m   -> Enum   i m
            Lit    _ l   -> Lit    i l

instance FromJSON (Shape Maybe) where
    parseJSON = withObject "shape" $ \o -> do
        i <- parseJSON (Object o)
        t <- o .:  "type"
        m <- o .:? "enum"
        case t of
            "list"      -> List   i <$> o .: "member"
            "map"       -> Map    i <$> o .: "key" <*> o .: "value"
            "structure" -> Struct i <$> parseJSON (Object o)
            "integer"   -> pure (Lit i Int)
            "long"      -> pure (Lit i Long)
            "double"    -> pure (Lit i Double)
            "float"     -> pure (Lit i Double)
            "blob"      -> pure (Lit i Blob)
            "boolean"   -> pure (Lit i Bool)
            "timestamp" -> pure (Lit i Time)
            "string"
                | Just v <- m -> pure . Enum i $ joinKV v
                | otherwise   -> pure (Lit i Text)
            _           -> fail $ "Unknown Shape type: " ++ Text.unpack t

data HTTP f = HTTP
    { _method       :: !Method
    , _requestURI   :: URI
    , _responseCode :: f Int
    } deriving (Generic)

makeClassy ''HTTP

instance FromJSON (HTTP Maybe) where
    parseJSON = gParseJSON' camel

data Operation f a = Operation
    { _opName          :: Text
    , _opDocumentation :: f Text
    , _opHTTP          :: HTTP f
    , _opInput         :: f (a f)
    , _opOutput        :: f (a f)
    }

makeLenses ''Operation

requestName, responseName :: Getter (Operation f a) Text
requestName  = to _opName
responseName = to ((<> "Response") . _opName)

instance FromJSON (Operation Maybe Ref) where
    parseJSON = withObject "operation" $ \o -> Operation
        <$> o .:  "name"
        <*> o .:? "documentation"
        <*> o .:  "http"
        <*> o .:? "input"
        <*> o .:? "output"

instance HasHTTP (Operation f a) f where
    hTTP = opHTTP

data Metadata f = Metadata
    { _protocol         :: !Protocol
    , _serviceAbbrev    :: Text
    , _serviceFullName  :: Text
    , _apiVersion       :: Text
    , _signatureVersion :: !Signature
    , _endpointPrefix   :: Text
    , _timestampFormat  :: f Timestamp
    , _checksumFormat   :: f Checksum
    , _jsonVersion      :: Text
    , _targetPrefix     :: Maybe Text
    } deriving (Generic)

makeClassy ''Metadata

instance FromJSON (Metadata Maybe) where
    parseJSON = withObject "meta" $ \o -> Metadata
        <$> o .:  "protocol"
        <*> o .:  "serviceAbbreviation"
        <*> o .:  "serviceFullName"
        <*> o .:  "apiVersion"
        <*> o .:  "signatureVersion"
        <*> o .:  "endpointPrefix"
        <*> o .:? "timestampFormat"
        <*> o .:? "checksumFormat"
        <*> o .:? "jsonVersion"     .!= "1.0"
        <*> o .:? "targetPrefix"

instance ToJSON (Metadata Identity) where
    toJSON = gToJSON' camel

data Service f a b = Service
    { _metadata'     :: Metadata f
    , _documentation :: Help
    , _operations    :: Map Text (Operation f a)
    , _shapes        :: Map Text (b f)
    } deriving (Generic)

makeClassy ''Service

instance HasMetadata (Service f a b) f where
    metadata = metadata'

instance FromJSON (Service Maybe Ref Shape) where
    parseJSON = gParseJSON' lower

data Fun = Fun Name Help Decl Decl

data Inst
    = ToQuery
    | ToJSON
    | FromJSON
    | ToXML
    | FromXML

data Data f
    = Product (Info f) (Struct f)      Decl [Inst] Fun (Map Text Fun)
    | Sum     (Info f) (Map Text Text) Decl [Inst]

makePrisms ''Data

instance HasInfo (Data f) f where
    info = lens f (flip g)
      where
        f = \case
            Product i _ _ _ _ _  -> i
            Sum     i _ _ _      -> i

        g i = \case
            Product _ s  d is c ls -> Product i s d is c ls
            Sum     _ vs d is      -> Sum i vs d is

instance ToJSON (Data f) where
    toJSON = \case
        Product i s d is c ls -> object
            [ "type" .= Text.pack "product"
            , "declaration" .= d
            ]

        Sum i vs d is -> object
            [ "type" .= Text.pack "sum"
            , "declaration" .= d
            ]

           --             [ "type"        .- Text.pack "product"
        --     , "constructor" .- ctor
        --     , "comment"     .- Above 0 doc
        --     , "declaration" .- decl
        --     , "fields"      .- fieldPairs (x ^. structMembers)
        --     , "lenses"      .- ls
        --     , "instances"   .- is
        --     ]
        -- Sum x doc decl is ->
        --     [ "type"         .- Text.pack "sum"
        --     , "comment"      .- Above 0 doc
        --     , "declaration"  .- decl
        --     , "constructors" .- view enumValues x
        --     , "instances"    .- is
        --     ]

data Library = Library
    { _versions'      :: Versions
    , _config'        :: Config
    , _service'       :: Service Identity Data Data
    , _namespace      :: NS
    , _exposedModules :: [NS]
    , _otherModules   :: [NS]
    } deriving (Generic)

makeLenses ''Library

instance HasMetadata Library Identity           where metadata = service' . metadata'
instance HasService  Library Identity Data Data where service  = service'
instance HasConfig   Library                    where config   = config'
instance HasVersions Library                    where versions = versions'

instance ToJSON Library where
    toJSON l = A.Object (x <> y)
      where
        A.Object y = toJSON (l ^. metadata)
        A.Object x = object
            [ "referenceUrl"   .= (l ^. referenceUrl)
            , "operationUrl"   .= (l ^. operationUrl)
            , "description"    .= (l ^. documentation . asDesc)
            , "documentation"  .= (l ^. documentation)
            , "libraryName"    .= (l ^. libraryName)
            , "libraryVersion" .= (l ^. libraryVersion)
            , "clientVersion"  .= (l ^. clientVersion)
            , "coreVersion"    .= (l ^. coreVersion)
            , "exposedModules" .= (l ^. exposedModules)
            , "otherModules"   .= (l ^. otherModules)
            , "shapes"         .= (l ^. shapes)
            ]
