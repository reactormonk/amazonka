{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ViewPatterns               #-}

-- |
-- Module      : Network.AWS.Internal.Body
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Internal.Body where

import           Control.Applicative
import           Control.Monad
import           Control.Monad.IO.Class
import           Control.Monad.Morph
import           Control.Monad.Trans.Resource
import qualified Data.ByteString              as BS
import           Data.Conduit
import qualified Data.Conduit.Binary          as Conduit
import           Network.AWS.Prelude
import           System.IO

-- | Convenience function for obtaining the size of a file.
getFileSize :: MonadIO m => FilePath -> m Integer
getFileSize path = liftIO (withBinaryFile path ReadMode hFileSize)

-- | Connect a 'Sink' to a response stream.
sinkBody :: MonadResource m => RsBody -> Sink ByteString m a -> m a
sinkBody (RsBody body) sink = hoist liftResourceT body $$+- sink

-- | Construct a 'HashedBody' from a 'FilePath', calculating the 'SHA256' hash
-- and file size.
--
-- /Note:/ While this function will perform in constant space, it will enumerate the
-- entirety of the file contents _twice_. Firstly to calculate the SHA256 and
-- lastly to stream the contents to the socket during sending.
--
-- /See:/ 'ToHashedBody'.
hashedFile :: MonadIO m
           => FilePath -- ^ The file path to read.
           -> m HashedBody
hashedFile path =
    liftIO $ HashedStream
        <$> runResourceT (Conduit.sourceFile path $$ sinkSHA256)
        <*> getFileSize path
        <*> pure (Conduit.sourceFile path)

-- | Same as `hashedFile` but from a part of a file.
hashedFileRange :: MonadIO m
                => FilePath -- ^ The file path to read.
                -> Integer  -- ^ The byte offset at which to start reading.
                -> Integer  -- ^ The maximum number of bytes to read.
                -> m HashedBody
hashedFileRange path (Just -> offset) (Just -> len) =
    liftIO $ HashedStream
        <$> runResourceT (Conduit.sourceFileRange path offset len $$ sinkSHA256)
        <*> getFileSize path
        <*> pure (Conduit.sourceFileRange path offset len)

-- | Construct a 'HashedBody' from a source, manually specifying the
-- 'SHA256' hash and file size.
--
-- /See:/ 'ToHashedBody'.
hashedBody :: Digest SHA256 -- ^ A SHA256 hash of the file contents.
           -> Integer       -- ^ The size of the stream in bytes.
           -> Source (ResourceT IO) ByteString
           -> HashedBody
hashedBody = HashedStream

-- | Something something.
--
-- Will intelligently revert to 'HashedBody' if the file is smaller than the
-- specified 'ChunkSize'.
--
-- Add note about how it selects chunk size.
--
-- /See:/ 'ToBody'.
chunkedFile :: MonadIO m => ChunkSize -> FilePath -> m RqBody
chunkedFile chunk path = do
    size <- getFileSize path
    if size > toInteger chunk
        then return $ unsafeChunkedBody chunk size (sourceFileChunks chunk path)
        else Hashed `liftM` hashedFile path

-- | Same as `chunkedFile` but for a apart of a file
chunkedFileRange :: MonadIO m
                 => ChunkSize
                    -- ^ The idealized size of chunks that will be yielded downstream.
                 -> FilePath
                    -- ^ The file path to read.
                 -> Integer
                    -- ^ The byte offset at which to start reading.
                 -> Integer
                    -- ^ The maximum number of bytes to read.
                 -> m RqBody
chunkedFileRange chunk path offset len = do
    size <- getFileSize path
    let n = min (size - offset) len
    if  n > toInteger chunk
        then return $ unsafeChunkedBody chunk n (sourceFileRangeChunks chunk path offset len)
        else Hashed `liftM` hashedFileRange path offset len

-- | Something something.
--
-- Marked as unsafe because it does nothing to enforce the chunk size.
-- Typically for conduit 'IO' functions, it's whatever ByteString's
-- 'defaultBufferSize' is, around 32 KB. If the chunk size is less than 8 KB,
-- the request will error. 64 KB or higher chunk size is recommended for
-- performance reasons.
--
-- Note that it will always create a chunked body even if the request
-- is too small.
--
-- /See:/ 'ToBody'.
unsafeChunkedBody :: ChunkSize
                     -- ^ The idealized size of chunks that will be yielded downstream.
                  -> Integer
                     -- ^ The size of the stream in bytes.
                  -> Source (ResourceT IO) ByteString
                  -> RqBody
unsafeChunkedBody chunk size = Chunked . ChunkedBody chunk size

sourceFileChunks :: MonadResource m
                 => ChunkSize
                 -> FilePath
                 -> Source m ByteString
sourceFileChunks (ChunkSize chunk) path =
    bracketP (openBinaryFile path ReadMode) hClose go
  where
    -- Uses hGet with a specific buffer size, instead of hGetSome.
    go hd = do
        bs <- liftIO (BS.hGet hd chunk)
        unless (BS.null bs) $ do
            yield bs
            go hd

sourceFileRangeChunks :: MonadResource m
                      => ChunkSize
                         -- ^ The idealized size of chunks that will be yielded downstream.
                      -> FilePath
                         -- ^ The file path to read.
                      -> Integer
                         -- ^ The byte offset at which to start reading.
                      -> Integer
                         -- ^ The maximum number of bytes to read.
                      -> Source m ByteString
sourceFileRangeChunks (ChunkSize chunk) path offset len =
    bracketP acquire hClose seek
  where
    acquire = openBinaryFile path ReadMode
    seek hd = liftIO (hSeek hd AbsoluteSeek offset) >> go (fromIntegral len) hd

    go remainder hd
        | remainder <= chunk = do
            bs <- liftIO (BS.hGet hd remainder)
            unless (BS.null bs) $
                yield bs

        | otherwise          = do
            bs <- liftIO (BS.hGet hd chunk)
            unless (BS.null bs) $ do
                yield bs
                go (remainder - chunk) hd

-- | Incrementally calculate a 'MD5' 'Digest'.
sinkMD5 :: Monad m => Consumer ByteString m (Digest MD5)
sinkMD5 = sinkHash

-- | Incrementally calculate a 'SHA256' 'Digest'.
sinkSHA256 :: Monad m => Consumer ByteString m (Digest SHA256)
sinkSHA256 = sinkHash

-- | A cryptonite compatible incremental hash sink.
sinkHash :: (Monad m, HashAlgorithm a) => Consumer ByteString m (Digest a)
sinkHash = sink hashInit
  where
    sink ctx = do
        mbs <- await
        case mbs of
            Nothing -> return $! hashFinalize ctx
            Just bs -> sink $! hashUpdate ctx bs
