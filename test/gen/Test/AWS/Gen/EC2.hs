-- Module      : Test.AWS.Gen.EC2
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Derived from AWS service descriptions, licensed under Apache 2.0.

module Test.AWS.Gen.EC2 where

import           Data.Proxy
import           Network.AWS.EC2
import           Test.AWS.Fixture
import           Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures = testGroup "SQS"
--     [ testGroup "request"
--         [ detachNetworkInterfaceTest $
--             detachNetworkInterface
--
--         , deleteVPCEndpointsTest $
--             deleteVPCEndpoints
--
--         , deleteKeyPairTest $
--             deleteKeyPair
--
--         , deleteFlowLogsTest $
--             deleteFlowLogs
--
--         , describeTagsTest $
--             describeTags
--
--         , revokeSecurityGroupEgressTest $
--             revokeSecurityGroupEgress
--
--         , createVPNGatewayTest $
--             createVPNGateway
--
--         , detachInternetGatewayTest $
--             detachInternetGateway
--
--         , createNetworkACLTest $
--             createNetworkACL
--
--         , importInstanceTest $
--             importInstance
--
--         , describeVPCClassicLinkTest $
--             describeVPCClassicLink
--
--         , deleteVPNConnectionTest $
--             deleteVPNConnection
--
--         , authorizeSecurityGroupEgressTest $
--             authorizeSecurityGroupEgress
--
--         , describeBundleTasksTest $
--             describeBundleTasks
--
--         , createInternetGatewayTest $
--             createInternetGateway
--
--         , releaseAddressTest $
--             releaseAddress
--
--         , cancelBundleTaskTest $
--             cancelBundleTask
--
--         , modifyNetworkInterfaceAttributeTest $
--             modifyNetworkInterfaceAttribute
--
--         , modifySubnetAttributeTest $
--             modifySubnetAttribute
--
--         , deregisterImageTest $
--             deregisterImage
--
--         , detachVolumeTest $
--             detachVolume
--
--         , cancelReservedInstancesListingTest $
--             cancelReservedInstancesListing
--
--         , attachClassicLinkVPCTest $
--             attachClassicLinkVPC
--
--         , cancelSpotFleetRequestsTest $
--             cancelSpotFleetRequests
--
--         , describeDHCPOptionsTest $
--             describeDHCPOptions
--
--         , describeSpotPriceHistoryTest $
--             describeSpotPriceHistory
--
--         , stopInstancesTest $
--             stopInstances
--
--         , importImageTest $
--             importImage
--
--         , deleteNetworkACLEntryTest $
--             deleteNetworkACLEntry
--
--         , disableVPCClassicLinkTest $
--             disableVPCClassicLink
--
--         , authorizeSecurityGroupIngressTest $
--             authorizeSecurityGroupIngress
--
--         , bundleInstanceTest $
--             bundleInstance
--
--         , describeVPCEndpointServicesTest $
--             describeVPCEndpointServices
--
--         , replaceNetworkACLAssociationTest $
--             replaceNetworkACLAssociation
--
--         , createVPCPeeringConnectionTest $
--             createVPCPeeringConnection
--
--         , resetSnapshotAttributeTest $
--             resetSnapshotAttribute
--
--         , describeAddressesTest $
--             describeAddresses
--
--         , describeInternetGatewaysTest $
--             describeInternetGateways
--
--         , replaceRouteTest $
--             replaceRoute
--
--         , createTagsTest $
--             createTags
--
--         , describeSubnetsTest $
--             describeSubnets
--
--         , describeNetworkInterfacesTest $
--             describeNetworkInterfaces
--
--         , purchaseReservedInstancesOfferingTest $
--             purchaseReservedInstancesOffering
--
--         , describeSnapshotAttributeTest $
--             describeSnapshotAttribute
--
--         , createCustomerGatewayTest $
--             createCustomerGateway
--
--         , attachInternetGatewayTest $
--             attachInternetGateway
--
--         , deleteTagsTest $
--             deleteTags
--
--         , replaceNetworkACLEntryTest $
--             replaceNetworkACLEntry
--
--         , resetInstanceAttributeTest $
--             resetInstanceAttribute
--
--         , deleteRouteTest $
--             deleteRoute
--
--         , describeVPNConnectionsTest $
--             describeVPNConnections
--
--         , describeFlowLogsTest $
--             describeFlowLogs
--
--         , deleteSecurityGroupTest $
--             deleteSecurityGroup
--
--         , describeReservedInstancesOfferingsTest $
--             describeReservedInstancesOfferings
--
--         , deleteVPCPeeringConnectionTest $
--             deleteVPCPeeringConnection
--
--         , describeVPCEndpointsTest $
--             describeVPCEndpoints
--
--         , describeInstanceAttributeTest $
--             describeInstanceAttribute
--
--         , confirmProductInstanceTest $
--             confirmProductInstance
--
--         , importKeyPairTest $
--             importKeyPair
--
--         , attachNetworkInterfaceTest $
--             attachNetworkInterface
--
--         , describeInstanceStatusTest $
--             describeInstanceStatus
--
--         , cancelConversionTaskTest $
--             cancelConversionTask
--
--         , reportInstanceStatusTest $
--             reportInstanceStatus
--
--         , associateDHCPOptionsTest $
--             associateDHCPOptions
--
--         , describeVPCsTest $
--             describeVPCs
--
--         , requestSpotInstancesTest $
--             requestSpotInstances
--
--         , modifyImageAttributeTest $
--             modifyImageAttribute
--
--         , describeReservedInstancesTest $
--             describeReservedInstances
--
--         , allocateAddressTest $
--             allocateAddress
--
--         , runInstancesTest $
--             runInstances
--
--         , createRouteTableTest $
--             createRouteTable
--
--         , attachVolumeTest $
--             attachVolume
--
--         , describeConversionTasksTest $
--             describeConversionTasks
--
--         , rejectVPCPeeringConnectionTest $
--             rejectVPCPeeringConnection
--
--         , revokeSecurityGroupIngressTest $
--             revokeSecurityGroupIngress
--
--         , describeVolumesTest $
--             describeVolumes
--
--         , deleteVPNConnectionRouteTest $
--             deleteVPNConnectionRoute
--
--         , modifyReservedInstancesTest $
--             modifyReservedInstances
--
--         , registerImageTest $
--             registerImage
--
--         , modifyVPCEndpointTest $
--             modifyVPCEndpoint
--
--         , deleteVPNGatewayTest $
--             deleteVPNGateway
--
--         , createVPCTest $
--             createVPC
--
--         , describeMovingAddressesTest $
--             describeMovingAddresses
--
--         , describeVolumeAttributeTest $
--             describeVolumeAttribute
--
--         , moveAddressToVPCTest $
--             moveAddressToVPC
--
--         , getPasswordDataTest $
--             getPasswordData
--
--         , createFlowLogsTest $
--             createFlowLogs
--
--         , describeImportImageTasksTest $
--             describeImportImageTasks
--
--         , deleteNetworkACLTest $
--             deleteNetworkACL
--
--         , describeSpotFleetRequestsTest $
--             describeSpotFleetRequests
--
--         , copySnapshotTest $
--             copySnapshot
--
--         , modifyVolumeAttributeTest $
--             modifyVolumeAttribute
--
--         , describeVPCAttributeTest $
--             describeVPCAttribute
--
--         , createVolumeTest $
--             createVolume
--
--         , disassociateAddressTest $
--             disassociateAddress
--
--         , deleteVPCTest $
--             deleteVPC
--
--         , describePrefixListsTest $
--             describePrefixLists
--
--         , createInstanceExportTaskTest $
--             createInstanceExportTask
--
--         , describeSpotDatafeedSubscriptionTest $
--             describeSpotDatafeedSubscription
--
--         , detachVPNGatewayTest $
--             detachVPNGateway
--
--         , describeExportTasksTest $
--             describeExportTasks
--
--         , deletePlacementGroupTest $
--             deletePlacementGroup
--
--         , createSubnetTest $
--             createSubnet
--
--         , enableVolumeIOTest $
--             enableVolumeIO
--
--         , cancelExportTaskTest $
--             cancelExportTask
--
--         , requestSpotFleetTest $
--             requestSpotFleet
--
--         , describeInstancesTest $
--             describeInstances
--
--         , describeSecurityGroupsTest $
--             describeSecurityGroups
--
--         , describeVPCPeeringConnectionsTest $
--             describeVPCPeeringConnections
--
--         , createNetworkInterfaceTest $
--             createNetworkInterface
--
--         , associateAddressTest $
--             associateAddress
--
--         , startInstancesTest $
--             startInstances
--
--         , describeCustomerGatewaysTest $
--             describeCustomerGateways
--
--         , resetNetworkInterfaceAttributeTest $
--             resetNetworkInterfaceAttribute
--
--         , createVPNConnectionTest $
--             createVPNConnection
--
--         , describeSnapshotsTest $
--             describeSnapshots
--
--         , createPlacementGroupTest $
--             createPlacementGroup
--
--         , replaceRouteTableAssociationTest $
--             replaceRouteTableAssociation
--
--         , describeNetworkInterfaceAttributeTest $
--             describeNetworkInterfaceAttribute
--
--         , describeReservedInstancesListingsTest $
--             describeReservedInstancesListings
--
--         , deleteNetworkInterfaceTest $
--             deleteNetworkInterface
--
--         , deleteInternetGatewayTest $
--             deleteInternetGateway
--
--         , deleteSubnetTest $
--             deleteSubnet
--
--         , createVPCEndpointTest $
--             createVPCEndpoint
--
--         , describeImportSnapshotTasksTest $
--             describeImportSnapshotTasks
--
--         , copyImageTest $
--             copyImage
--
--         , disassociateRouteTableTest $
--             disassociateRouteTable
--
--         , unmonitorInstancesTest $
--             unmonitorInstances
--
--         , importVolumeTest $
--             importVolume
--
--         , disableVGWRoutePropagationTest $
--             disableVGWRoutePropagation
--
--         , createSpotDatafeedSubscriptionTest $
--             createSpotDatafeedSubscription
--
--         , assignPrivateIPAddressesTest $
--             assignPrivateIPAddresses
--
--         , deleteSnapshotTest $
--             deleteSnapshot
--
--         , deleteCustomerGatewayTest $
--             deleteCustomerGateway
--
--         , modifyInstanceAttributeTest $
--             modifyInstanceAttribute
--
--         , createSecurityGroupTest $
--             createSecurityGroup
--
--         , cancelSpotInstanceRequestsTest $
--             cancelSpotInstanceRequests
--
--         , createRouteTest $
--             createRoute
--
--         , createNetworkACLEntryTest $
--             createNetworkACLEntry
--
--         , modifySnapshotAttributeTest $
--             modifySnapshotAttribute
--
--         , enableVGWRoutePropagationTest $
--             enableVGWRoutePropagation
--
--         , createSnapshotTest $
--             createSnapshot
--
--         , describeSpotFleetRequestHistoryTest $
--             describeSpotFleetRequestHistory
--
--         , deleteSpotDatafeedSubscriptionTest $
--             deleteSpotDatafeedSubscription
--
--         , describePlacementGroupsTest $
--             describePlacementGroups
--
--         , createReservedInstancesListingTest $
--             createReservedInstancesListing
--
--         , enableVPCClassicLinkTest $
--             enableVPCClassicLink
--
--         , describeKeyPairsTest $
--             describeKeyPairs
--
--         , rebootInstancesTest $
--             rebootInstances
--
--         , attachVPNGatewayTest $
--             attachVPNGateway
--
--         , createVPNConnectionRouteTest $
--             createVPNConnectionRoute
--
--         , describeClassicLinkInstancesTest $
--             describeClassicLinkInstances
--
--         , terminateInstancesTest $
--             terminateInstances
--
--         , createDHCPOptionsTest $
--             createDHCPOptions
--
--         , associateRouteTableTest $
--             associateRouteTable
--
--         , createImageTest $
--             createImage
--
--         , describeAccountAttributesTest $
--             describeAccountAttributes
--
--         , resetImageAttributeTest $
--             resetImageAttribute
--
--         , describeNetworkACLsTest $
--             describeNetworkACLs
--
--         , cancelImportTaskTest $
--             cancelImportTask
--
--         , getConsoleOutputTest $
--             getConsoleOutput
--
--         , unassignPrivateIPAddressesTest $
--             unassignPrivateIPAddresses
--
--         , deleteRouteTableTest $
--             deleteRouteTable
--
--         , describeImageAttributeTest $
--             describeImageAttribute
--
--         , deleteDHCPOptionsTest $
--             deleteDHCPOptions
--
--         , describeVPNGatewaysTest $
--             describeVPNGateways
--
--         , detachClassicLinkVPCTest $
--             detachClassicLinkVPC
--
--         , describeReservedInstancesModificationsTest $
--             describeReservedInstancesModifications
--
--         , describeSpotInstanceRequestsTest $
--             describeSpotInstanceRequests
--
--         , monitorInstancesTest $
--             monitorInstances
--
--         , describeRegionsTest $
--             describeRegions
--
--         , modifyVPCAttributeTest $
--             modifyVPCAttribute
--
--         , describeSpotFleetInstancesTest $
--             describeSpotFleetInstances
--
--         , describeVolumeStatusTest $
--             describeVolumeStatus
--
--         , deleteVolumeTest $
--             deleteVolume
--
--         , describeImagesTest $
--             describeImages
--
--         , createKeyPairTest $
--             createKeyPair
--
--         , restoreAddressToClassicTest $
--             restoreAddressToClassic
--
--         , describeAvailabilityZonesTest $
--             describeAvailabilityZones
--
--         , importSnapshotTest $
--             importSnapshot
--
--         , acceptVPCPeeringConnectionTest $
--             acceptVPCPeeringConnection
--
--         , describeRouteTablesTest $
--             describeRouteTables
--
--           ]

--     , testGroup "response"
--         [ detachNetworkInterfaceResponseTest $
--             detachNetworkInterfaceResponse
--
--         , deleteVPCEndpointsResponseTest $
--             deleteVPCEndpointsResponse
--
--         , deleteKeyPairResponseTest $
--             deleteKeyPairResponse
--
--         , deleteFlowLogsResponseTest $
--             deleteFlowLogsResponse
--
--         , describeTagsResponseTest $
--             describeTagsResponse
--
--         , revokeSecurityGroupEgressResponseTest $
--             revokeSecurityGroupEgressResponse
--
--         , createVPNGatewayResponseTest $
--             createVPNGatewayResponse
--
--         , detachInternetGatewayResponseTest $
--             detachInternetGatewayResponse
--
--         , createNetworkACLResponseTest $
--             createNetworkACLResponse
--
--         , importInstanceResponseTest $
--             importInstanceResponse
--
--         , describeVPCClassicLinkResponseTest $
--             describeVPCClassicLinkResponse
--
--         , deleteVPNConnectionResponseTest $
--             deleteVPNConnectionResponse
--
--         , authorizeSecurityGroupEgressResponseTest $
--             authorizeSecurityGroupEgressResponse
--
--         , describeBundleTasksResponseTest $
--             describeBundleTasksResponse
--
--         , createInternetGatewayResponseTest $
--             createInternetGatewayResponse
--
--         , releaseAddressResponseTest $
--             releaseAddressResponse
--
--         , cancelBundleTaskResponseTest $
--             cancelBundleTaskResponse
--
--         , modifyNetworkInterfaceAttributeResponseTest $
--             modifyNetworkInterfaceAttributeResponse
--
--         , modifySubnetAttributeResponseTest $
--             modifySubnetAttributeResponse
--
--         , deregisterImageResponseTest $
--             deregisterImageResponse
--
--         , volumeAttachmentTest $
--             volumeAttachment
--
--         , cancelReservedInstancesListingResponseTest $
--             cancelReservedInstancesListingResponse
--
--         , attachClassicLinkVPCResponseTest $
--             attachClassicLinkVPCResponse
--
--         , cancelSpotFleetRequestsResponseTest $
--             cancelSpotFleetRequestsResponse
--
--         , describeDHCPOptionsResponseTest $
--             describeDHCPOptionsResponse
--
--         , describeSpotPriceHistoryResponseTest $
--             describeSpotPriceHistoryResponse
--
--         , stopInstancesResponseTest $
--             stopInstancesResponse
--
--         , importImageResponseTest $
--             importImageResponse
--
--         , deleteNetworkACLEntryResponseTest $
--             deleteNetworkACLEntryResponse
--
--         , disableVPCClassicLinkResponseTest $
--             disableVPCClassicLinkResponse
--
--         , authorizeSecurityGroupIngressResponseTest $
--             authorizeSecurityGroupIngressResponse
--
--         , bundleInstanceResponseTest $
--             bundleInstanceResponse
--
--         , describeVPCEndpointServicesResponseTest $
--             describeVPCEndpointServicesResponse
--
--         , replaceNetworkACLAssociationResponseTest $
--             replaceNetworkACLAssociationResponse
--
--         , createVPCPeeringConnectionResponseTest $
--             createVPCPeeringConnectionResponse
--
--         , resetSnapshotAttributeResponseTest $
--             resetSnapshotAttributeResponse
--
--         , describeAddressesResponseTest $
--             describeAddressesResponse
--
--         , describeInternetGatewaysResponseTest $
--             describeInternetGatewaysResponse
--
--         , replaceRouteResponseTest $
--             replaceRouteResponse
--
--         , createTagsResponseTest $
--             createTagsResponse
--
--         , describeSubnetsResponseTest $
--             describeSubnetsResponse
--
--         , describeNetworkInterfacesResponseTest $
--             describeNetworkInterfacesResponse
--
--         , purchaseReservedInstancesOfferingResponseTest $
--             purchaseReservedInstancesOfferingResponse
--
--         , describeSnapshotAttributeResponseTest $
--             describeSnapshotAttributeResponse
--
--         , createCustomerGatewayResponseTest $
--             createCustomerGatewayResponse
--
--         , attachInternetGatewayResponseTest $
--             attachInternetGatewayResponse
--
--         , deleteTagsResponseTest $
--             deleteTagsResponse
--
--         , replaceNetworkACLEntryResponseTest $
--             replaceNetworkACLEntryResponse
--
--         , resetInstanceAttributeResponseTest $
--             resetInstanceAttributeResponse
--
--         , deleteRouteResponseTest $
--             deleteRouteResponse
--
--         , describeVPNConnectionsResponseTest $
--             describeVPNConnectionsResponse
--
--         , describeFlowLogsResponseTest $
--             describeFlowLogsResponse
--
--         , deleteSecurityGroupResponseTest $
--             deleteSecurityGroupResponse
--
--         , describeReservedInstancesOfferingsResponseTest $
--             describeReservedInstancesOfferingsResponse
--
--         , deleteVPCPeeringConnectionResponseTest $
--             deleteVPCPeeringConnectionResponse
--
--         , describeVPCEndpointsResponseTest $
--             describeVPCEndpointsResponse
--
--         , describeInstanceAttributeResponseTest $
--             describeInstanceAttributeResponse
--
--         , confirmProductInstanceResponseTest $
--             confirmProductInstanceResponse
--
--         , importKeyPairResponseTest $
--             importKeyPairResponse
--
--         , attachNetworkInterfaceResponseTest $
--             attachNetworkInterfaceResponse
--
--         , describeInstanceStatusResponseTest $
--             describeInstanceStatusResponse
--
--         , cancelConversionTaskResponseTest $
--             cancelConversionTaskResponse
--
--         , reportInstanceStatusResponseTest $
--             reportInstanceStatusResponse
--
--         , associateDHCPOptionsResponseTest $
--             associateDHCPOptionsResponse
--
--         , describeVPCsResponseTest $
--             describeVPCsResponse
--
--         , requestSpotInstancesResponseTest $
--             requestSpotInstancesResponse
--
--         , modifyImageAttributeResponseTest $
--             modifyImageAttributeResponse
--
--         , describeReservedInstancesResponseTest $
--             describeReservedInstancesResponse
--
--         , allocateAddressResponseTest $
--             allocateAddressResponse
--
--         , reservationTest $
--             reservation
--
--         , createRouteTableResponseTest $
--             createRouteTableResponse
--
--         , volumeAttachmentTest $
--             volumeAttachment
--
--         , describeConversionTasksResponseTest $
--             describeConversionTasksResponse
--
--         , rejectVPCPeeringConnectionResponseTest $
--             rejectVPCPeeringConnectionResponse
--
--         , revokeSecurityGroupIngressResponseTest $
--             revokeSecurityGroupIngressResponse
--
--         , describeVolumesResponseTest $
--             describeVolumesResponse
--
--         , deleteVPNConnectionRouteResponseTest $
--             deleteVPNConnectionRouteResponse
--
--         , modifyReservedInstancesResponseTest $
--             modifyReservedInstancesResponse
--
--         , registerImageResponseTest $
--             registerImageResponse
--
--         , modifyVPCEndpointResponseTest $
--             modifyVPCEndpointResponse
--
--         , deleteVPNGatewayResponseTest $
--             deleteVPNGatewayResponse
--
--         , createVPCResponseTest $
--             createVPCResponse
--
--         , describeMovingAddressesResponseTest $
--             describeMovingAddressesResponse
--
--         , describeVolumeAttributeResponseTest $
--             describeVolumeAttributeResponse
--
--         , moveAddressToVPCResponseTest $
--             moveAddressToVPCResponse
--
--         , getPasswordDataResponseTest $
--             getPasswordDataResponse
--
--         , createFlowLogsResponseTest $
--             createFlowLogsResponse
--
--         , describeImportImageTasksResponseTest $
--             describeImportImageTasksResponse
--
--         , deleteNetworkACLResponseTest $
--             deleteNetworkACLResponse
--
--         , describeSpotFleetRequestsResponseTest $
--             describeSpotFleetRequestsResponse
--
--         , copySnapshotResponseTest $
--             copySnapshotResponse
--
--         , modifyVolumeAttributeResponseTest $
--             modifyVolumeAttributeResponse
--
--         , describeVPCAttributeResponseTest $
--             describeVPCAttributeResponse
--
--         , volumeTest $
--             volume
--
--         , disassociateAddressResponseTest $
--             disassociateAddressResponse
--
--         , deleteVPCResponseTest $
--             deleteVPCResponse
--
--         , describePrefixListsResponseTest $
--             describePrefixListsResponse
--
--         , createInstanceExportTaskResponseTest $
--             createInstanceExportTaskResponse
--
--         , describeSpotDatafeedSubscriptionResponseTest $
--             describeSpotDatafeedSubscriptionResponse
--
--         , detachVPNGatewayResponseTest $
--             detachVPNGatewayResponse
--
--         , describeExportTasksResponseTest $
--             describeExportTasksResponse
--
--         , deletePlacementGroupResponseTest $
--             deletePlacementGroupResponse
--
--         , createSubnetResponseTest $
--             createSubnetResponse
--
--         , enableVolumeIOResponseTest $
--             enableVolumeIOResponse
--
--         , cancelExportTaskResponseTest $
--             cancelExportTaskResponse
--
--         , requestSpotFleetResponseTest $
--             requestSpotFleetResponse
--
--         , describeInstancesResponseTest $
--             describeInstancesResponse
--
--         , describeSecurityGroupsResponseTest $
--             describeSecurityGroupsResponse
--
--         , describeVPCPeeringConnectionsResponseTest $
--             describeVPCPeeringConnectionsResponse
--
--         , createNetworkInterfaceResponseTest $
--             createNetworkInterfaceResponse
--
--         , associateAddressResponseTest $
--             associateAddressResponse
--
--         , startInstancesResponseTest $
--             startInstancesResponse
--
--         , describeCustomerGatewaysResponseTest $
--             describeCustomerGatewaysResponse
--
--         , resetNetworkInterfaceAttributeResponseTest $
--             resetNetworkInterfaceAttributeResponse
--
--         , createVPNConnectionResponseTest $
--             createVPNConnectionResponse
--
--         , describeSnapshotsResponseTest $
--             describeSnapshotsResponse
--
--         , createPlacementGroupResponseTest $
--             createPlacementGroupResponse
--
--         , replaceRouteTableAssociationResponseTest $
--             replaceRouteTableAssociationResponse
--
--         , describeNetworkInterfaceAttributeResponseTest $
--             describeNetworkInterfaceAttributeResponse
--
--         , describeReservedInstancesListingsResponseTest $
--             describeReservedInstancesListingsResponse
--
--         , deleteNetworkInterfaceResponseTest $
--             deleteNetworkInterfaceResponse
--
--         , deleteInternetGatewayResponseTest $
--             deleteInternetGatewayResponse
--
--         , deleteSubnetResponseTest $
--             deleteSubnetResponse
--
--         , createVPCEndpointResponseTest $
--             createVPCEndpointResponse
--
--         , describeImportSnapshotTasksResponseTest $
--             describeImportSnapshotTasksResponse
--
--         , copyImageResponseTest $
--             copyImageResponse
--
--         , disassociateRouteTableResponseTest $
--             disassociateRouteTableResponse
--
--         , unmonitorInstancesResponseTest $
--             unmonitorInstancesResponse
--
--         , importVolumeResponseTest $
--             importVolumeResponse
--
--         , disableVGWRoutePropagationResponseTest $
--             disableVGWRoutePropagationResponse
--
--         , createSpotDatafeedSubscriptionResponseTest $
--             createSpotDatafeedSubscriptionResponse
--
--         , assignPrivateIPAddressesResponseTest $
--             assignPrivateIPAddressesResponse
--
--         , deleteSnapshotResponseTest $
--             deleteSnapshotResponse
--
--         , deleteCustomerGatewayResponseTest $
--             deleteCustomerGatewayResponse
--
--         , modifyInstanceAttributeResponseTest $
--             modifyInstanceAttributeResponse
--
--         , createSecurityGroupResponseTest $
--             createSecurityGroupResponse
--
--         , cancelSpotInstanceRequestsResponseTest $
--             cancelSpotInstanceRequestsResponse
--
--         , createRouteResponseTest $
--             createRouteResponse
--
--         , createNetworkACLEntryResponseTest $
--             createNetworkACLEntryResponse
--
--         , modifySnapshotAttributeResponseTest $
--             modifySnapshotAttributeResponse
--
--         , enableVGWRoutePropagationResponseTest $
--             enableVGWRoutePropagationResponse
--
--         , snapshotTest $
--             snapshot
--
--         , describeSpotFleetRequestHistoryResponseTest $
--             describeSpotFleetRequestHistoryResponse
--
--         , deleteSpotDatafeedSubscriptionResponseTest $
--             deleteSpotDatafeedSubscriptionResponse
--
--         , describePlacementGroupsResponseTest $
--             describePlacementGroupsResponse
--
--         , createReservedInstancesListingResponseTest $
--             createReservedInstancesListingResponse
--
--         , enableVPCClassicLinkResponseTest $
--             enableVPCClassicLinkResponse
--
--         , describeKeyPairsResponseTest $
--             describeKeyPairsResponse
--
--         , rebootInstancesResponseTest $
--             rebootInstancesResponse
--
--         , attachVPNGatewayResponseTest $
--             attachVPNGatewayResponse
--
--         , createVPNConnectionRouteResponseTest $
--             createVPNConnectionRouteResponse
--
--         , describeClassicLinkInstancesResponseTest $
--             describeClassicLinkInstancesResponse
--
--         , terminateInstancesResponseTest $
--             terminateInstancesResponse
--
--         , createDHCPOptionsResponseTest $
--             createDHCPOptionsResponse
--
--         , associateRouteTableResponseTest $
--             associateRouteTableResponse
--
--         , createImageResponseTest $
--             createImageResponse
--
--         , describeAccountAttributesResponseTest $
--             describeAccountAttributesResponse
--
--         , resetImageAttributeResponseTest $
--             resetImageAttributeResponse
--
--         , describeNetworkACLsResponseTest $
--             describeNetworkACLsResponse
--
--         , cancelImportTaskResponseTest $
--             cancelImportTaskResponse
--
--         , getConsoleOutputResponseTest $
--             getConsoleOutputResponse
--
--         , unassignPrivateIPAddressesResponseTest $
--             unassignPrivateIPAddressesResponse
--
--         , deleteRouteTableResponseTest $
--             deleteRouteTableResponse
--
--         , describeImageAttributeResponseTest $
--             describeImageAttributeResponse
--
--         , deleteDHCPOptionsResponseTest $
--             deleteDHCPOptionsResponse
--
--         , describeVPNGatewaysResponseTest $
--             describeVPNGatewaysResponse
--
--         , detachClassicLinkVPCResponseTest $
--             detachClassicLinkVPCResponse
--
--         , describeReservedInstancesModificationsResponseTest $
--             describeReservedInstancesModificationsResponse
--
--         , describeSpotInstanceRequestsResponseTest $
--             describeSpotInstanceRequestsResponse
--
--         , monitorInstancesResponseTest $
--             monitorInstancesResponse
--
--         , describeRegionsResponseTest $
--             describeRegionsResponse
--
--         , modifyVPCAttributeResponseTest $
--             modifyVPCAttributeResponse
--
--         , describeSpotFleetInstancesResponseTest $
--             describeSpotFleetInstancesResponse
--
--         , describeVolumeStatusResponseTest $
--             describeVolumeStatusResponse
--
--         , deleteVolumeResponseTest $
--             deleteVolumeResponse
--
--         , describeImagesResponseTest $
--             describeImagesResponse
--
--         , createKeyPairResponseTest $
--             createKeyPairResponse
--
--         , restoreAddressToClassicResponseTest $
--             restoreAddressToClassicResponse
--
--         , describeAvailabilityZonesResponseTest $
--             describeAvailabilityZonesResponse
--
--         , importSnapshotResponseTest $
--             importSnapshotResponse
--
--         , acceptVPCPeeringConnectionResponseTest $
--             acceptVPCPeeringConnectionResponse
--
--         , describeRouteTablesResponseTest $
--             describeRouteTablesResponse
--
--           ]
--     ]

-- Requests

detachNetworkInterfaceTest :: DetachNetworkInterface -> TestTree
detachNetworkInterfaceTest = undefined

deleteVPCEndpointsTest :: DeleteVPCEndpoints -> TestTree
deleteVPCEndpointsTest = undefined

deleteKeyPairTest :: DeleteKeyPair -> TestTree
deleteKeyPairTest = undefined

deleteFlowLogsTest :: DeleteFlowLogs -> TestTree
deleteFlowLogsTest = undefined

describeTagsTest :: DescribeTags -> TestTree
describeTagsTest = undefined

revokeSecurityGroupEgressTest :: RevokeSecurityGroupEgress -> TestTree
revokeSecurityGroupEgressTest = undefined

createVPNGatewayTest :: CreateVPNGateway -> TestTree
createVPNGatewayTest = undefined

detachInternetGatewayTest :: DetachInternetGateway -> TestTree
detachInternetGatewayTest = undefined

createNetworkACLTest :: CreateNetworkACL -> TestTree
createNetworkACLTest = undefined

importInstanceTest :: ImportInstance -> TestTree
importInstanceTest = undefined

describeVPCClassicLinkTest :: DescribeVPCClassicLink -> TestTree
describeVPCClassicLinkTest = undefined

deleteVPNConnectionTest :: DeleteVPNConnection -> TestTree
deleteVPNConnectionTest = undefined

authorizeSecurityGroupEgressTest :: AuthorizeSecurityGroupEgress -> TestTree
authorizeSecurityGroupEgressTest = undefined

describeBundleTasksTest :: DescribeBundleTasks -> TestTree
describeBundleTasksTest = undefined

createInternetGatewayTest :: CreateInternetGateway -> TestTree
createInternetGatewayTest = undefined

releaseAddressTest :: ReleaseAddress -> TestTree
releaseAddressTest = undefined

cancelBundleTaskTest :: CancelBundleTask -> TestTree
cancelBundleTaskTest = undefined

modifyNetworkInterfaceAttributeTest :: ModifyNetworkInterfaceAttribute -> TestTree
modifyNetworkInterfaceAttributeTest = undefined

modifySubnetAttributeTest :: ModifySubnetAttribute -> TestTree
modifySubnetAttributeTest = undefined

deregisterImageTest :: DeregisterImage -> TestTree
deregisterImageTest = undefined

detachVolumeTest :: DetachVolume -> TestTree
detachVolumeTest = undefined

cancelReservedInstancesListingTest :: CancelReservedInstancesListing -> TestTree
cancelReservedInstancesListingTest = undefined

attachClassicLinkVPCTest :: AttachClassicLinkVPC -> TestTree
attachClassicLinkVPCTest = undefined

cancelSpotFleetRequestsTest :: CancelSpotFleetRequests -> TestTree
cancelSpotFleetRequestsTest = undefined

describeDHCPOptionsTest :: DescribeDHCPOptions -> TestTree
describeDHCPOptionsTest = undefined

describeSpotPriceHistoryTest :: DescribeSpotPriceHistory -> TestTree
describeSpotPriceHistoryTest = undefined

stopInstancesTest :: StopInstances -> TestTree
stopInstancesTest = undefined

importImageTest :: ImportImage -> TestTree
importImageTest = undefined

deleteNetworkACLEntryTest :: DeleteNetworkACLEntry -> TestTree
deleteNetworkACLEntryTest = undefined

disableVPCClassicLinkTest :: DisableVPCClassicLink -> TestTree
disableVPCClassicLinkTest = undefined

authorizeSecurityGroupIngressTest :: AuthorizeSecurityGroupIngress -> TestTree
authorizeSecurityGroupIngressTest = undefined

bundleInstanceTest :: BundleInstance -> TestTree
bundleInstanceTest = undefined

describeVPCEndpointServicesTest :: DescribeVPCEndpointServices -> TestTree
describeVPCEndpointServicesTest = undefined

replaceNetworkACLAssociationTest :: ReplaceNetworkACLAssociation -> TestTree
replaceNetworkACLAssociationTest = undefined

createVPCPeeringConnectionTest :: CreateVPCPeeringConnection -> TestTree
createVPCPeeringConnectionTest = undefined

resetSnapshotAttributeTest :: ResetSnapshotAttribute -> TestTree
resetSnapshotAttributeTest = undefined

describeAddressesTest :: DescribeAddresses -> TestTree
describeAddressesTest = undefined

describeInternetGatewaysTest :: DescribeInternetGateways -> TestTree
describeInternetGatewaysTest = undefined

replaceRouteTest :: ReplaceRoute -> TestTree
replaceRouteTest = undefined

createTagsTest :: CreateTags -> TestTree
createTagsTest = undefined

describeSubnetsTest :: DescribeSubnets -> TestTree
describeSubnetsTest = undefined

describeNetworkInterfacesTest :: DescribeNetworkInterfaces -> TestTree
describeNetworkInterfacesTest = undefined

purchaseReservedInstancesOfferingTest :: PurchaseReservedInstancesOffering -> TestTree
purchaseReservedInstancesOfferingTest = undefined

describeSnapshotAttributeTest :: DescribeSnapshotAttribute -> TestTree
describeSnapshotAttributeTest = undefined

createCustomerGatewayTest :: CreateCustomerGateway -> TestTree
createCustomerGatewayTest = undefined

attachInternetGatewayTest :: AttachInternetGateway -> TestTree
attachInternetGatewayTest = undefined

deleteTagsTest :: DeleteTags -> TestTree
deleteTagsTest = undefined

replaceNetworkACLEntryTest :: ReplaceNetworkACLEntry -> TestTree
replaceNetworkACLEntryTest = undefined

resetInstanceAttributeTest :: ResetInstanceAttribute -> TestTree
resetInstanceAttributeTest = undefined

deleteRouteTest :: DeleteRoute -> TestTree
deleteRouteTest = undefined

describeVPNConnectionsTest :: DescribeVPNConnections -> TestTree
describeVPNConnectionsTest = undefined

describeFlowLogsTest :: DescribeFlowLogs -> TestTree
describeFlowLogsTest = undefined

deleteSecurityGroupTest :: DeleteSecurityGroup -> TestTree
deleteSecurityGroupTest = undefined

describeReservedInstancesOfferingsTest :: DescribeReservedInstancesOfferings -> TestTree
describeReservedInstancesOfferingsTest = undefined

deleteVPCPeeringConnectionTest :: DeleteVPCPeeringConnection -> TestTree
deleteVPCPeeringConnectionTest = undefined

describeVPCEndpointsTest :: DescribeVPCEndpoints -> TestTree
describeVPCEndpointsTest = undefined

describeInstanceAttributeTest :: DescribeInstanceAttribute -> TestTree
describeInstanceAttributeTest = undefined

confirmProductInstanceTest :: ConfirmProductInstance -> TestTree
confirmProductInstanceTest = undefined

importKeyPairTest :: ImportKeyPair -> TestTree
importKeyPairTest = undefined

attachNetworkInterfaceTest :: AttachNetworkInterface -> TestTree
attachNetworkInterfaceTest = undefined

describeInstanceStatusTest :: DescribeInstanceStatus -> TestTree
describeInstanceStatusTest = undefined

cancelConversionTaskTest :: CancelConversionTask -> TestTree
cancelConversionTaskTest = undefined

reportInstanceStatusTest :: ReportInstanceStatus -> TestTree
reportInstanceStatusTest = undefined

associateDHCPOptionsTest :: AssociateDHCPOptions -> TestTree
associateDHCPOptionsTest = undefined

describeVPCsTest :: DescribeVPCs -> TestTree
describeVPCsTest = undefined

requestSpotInstancesTest :: RequestSpotInstances -> TestTree
requestSpotInstancesTest = undefined

modifyImageAttributeTest :: ModifyImageAttribute -> TestTree
modifyImageAttributeTest = undefined

describeReservedInstancesTest :: DescribeReservedInstances -> TestTree
describeReservedInstancesTest = undefined

allocateAddressTest :: AllocateAddress -> TestTree
allocateAddressTest = undefined

runInstancesTest :: RunInstances -> TestTree
runInstancesTest = undefined

createRouteTableTest :: CreateRouteTable -> TestTree
createRouteTableTest = undefined

attachVolumeTest :: AttachVolume -> TestTree
attachVolumeTest = undefined

describeConversionTasksTest :: DescribeConversionTasks -> TestTree
describeConversionTasksTest = undefined

rejectVPCPeeringConnectionTest :: RejectVPCPeeringConnection -> TestTree
rejectVPCPeeringConnectionTest = undefined

revokeSecurityGroupIngressTest :: RevokeSecurityGroupIngress -> TestTree
revokeSecurityGroupIngressTest = undefined

describeVolumesTest :: DescribeVolumes -> TestTree
describeVolumesTest = undefined

deleteVPNConnectionRouteTest :: DeleteVPNConnectionRoute -> TestTree
deleteVPNConnectionRouteTest = undefined

modifyReservedInstancesTest :: ModifyReservedInstances -> TestTree
modifyReservedInstancesTest = undefined

registerImageTest :: RegisterImage -> TestTree
registerImageTest = undefined

modifyVPCEndpointTest :: ModifyVPCEndpoint -> TestTree
modifyVPCEndpointTest = undefined

deleteVPNGatewayTest :: DeleteVPNGateway -> TestTree
deleteVPNGatewayTest = undefined

createVPCTest :: CreateVPC -> TestTree
createVPCTest = undefined

describeMovingAddressesTest :: DescribeMovingAddresses -> TestTree
describeMovingAddressesTest = undefined

describeVolumeAttributeTest :: DescribeVolumeAttribute -> TestTree
describeVolumeAttributeTest = undefined

moveAddressToVPCTest :: MoveAddressToVPC -> TestTree
moveAddressToVPCTest = undefined

getPasswordDataTest :: GetPasswordData -> TestTree
getPasswordDataTest = undefined

createFlowLogsTest :: CreateFlowLogs -> TestTree
createFlowLogsTest = undefined

describeImportImageTasksTest :: DescribeImportImageTasks -> TestTree
describeImportImageTasksTest = undefined

deleteNetworkACLTest :: DeleteNetworkACL -> TestTree
deleteNetworkACLTest = undefined

describeSpotFleetRequestsTest :: DescribeSpotFleetRequests -> TestTree
describeSpotFleetRequestsTest = undefined

copySnapshotTest :: CopySnapshot -> TestTree
copySnapshotTest = undefined

modifyVolumeAttributeTest :: ModifyVolumeAttribute -> TestTree
modifyVolumeAttributeTest = undefined

describeVPCAttributeTest :: DescribeVPCAttribute -> TestTree
describeVPCAttributeTest = undefined

createVolumeTest :: CreateVolume -> TestTree
createVolumeTest = undefined

disassociateAddressTest :: DisassociateAddress -> TestTree
disassociateAddressTest = undefined

deleteVPCTest :: DeleteVPC -> TestTree
deleteVPCTest = undefined

describePrefixListsTest :: DescribePrefixLists -> TestTree
describePrefixListsTest = undefined

createInstanceExportTaskTest :: CreateInstanceExportTask -> TestTree
createInstanceExportTaskTest = undefined

describeSpotDatafeedSubscriptionTest :: DescribeSpotDatafeedSubscription -> TestTree
describeSpotDatafeedSubscriptionTest = undefined

detachVPNGatewayTest :: DetachVPNGateway -> TestTree
detachVPNGatewayTest = undefined

describeExportTasksTest :: DescribeExportTasks -> TestTree
describeExportTasksTest = undefined

deletePlacementGroupTest :: DeletePlacementGroup -> TestTree
deletePlacementGroupTest = undefined

createSubnetTest :: CreateSubnet -> TestTree
createSubnetTest = undefined

enableVolumeIOTest :: EnableVolumeIO -> TestTree
enableVolumeIOTest = undefined

cancelExportTaskTest :: CancelExportTask -> TestTree
cancelExportTaskTest = undefined

requestSpotFleetTest :: RequestSpotFleet -> TestTree
requestSpotFleetTest = undefined

describeInstancesTest :: DescribeInstances -> TestTree
describeInstancesTest = undefined

describeSecurityGroupsTest :: DescribeSecurityGroups -> TestTree
describeSecurityGroupsTest = undefined

describeVPCPeeringConnectionsTest :: DescribeVPCPeeringConnections -> TestTree
describeVPCPeeringConnectionsTest = undefined

createNetworkInterfaceTest :: CreateNetworkInterface -> TestTree
createNetworkInterfaceTest = undefined

associateAddressTest :: AssociateAddress -> TestTree
associateAddressTest = undefined

startInstancesTest :: StartInstances -> TestTree
startInstancesTest = undefined

describeCustomerGatewaysTest :: DescribeCustomerGateways -> TestTree
describeCustomerGatewaysTest = undefined

resetNetworkInterfaceAttributeTest :: ResetNetworkInterfaceAttribute -> TestTree
resetNetworkInterfaceAttributeTest = undefined

createVPNConnectionTest :: CreateVPNConnection -> TestTree
createVPNConnectionTest = undefined

describeSnapshotsTest :: DescribeSnapshots -> TestTree
describeSnapshotsTest = undefined

createPlacementGroupTest :: CreatePlacementGroup -> TestTree
createPlacementGroupTest = undefined

replaceRouteTableAssociationTest :: ReplaceRouteTableAssociation -> TestTree
replaceRouteTableAssociationTest = undefined

describeNetworkInterfaceAttributeTest :: DescribeNetworkInterfaceAttribute -> TestTree
describeNetworkInterfaceAttributeTest = undefined

describeReservedInstancesListingsTest :: DescribeReservedInstancesListings -> TestTree
describeReservedInstancesListingsTest = undefined

deleteNetworkInterfaceTest :: DeleteNetworkInterface -> TestTree
deleteNetworkInterfaceTest = undefined

deleteInternetGatewayTest :: DeleteInternetGateway -> TestTree
deleteInternetGatewayTest = undefined

deleteSubnetTest :: DeleteSubnet -> TestTree
deleteSubnetTest = undefined

createVPCEndpointTest :: CreateVPCEndpoint -> TestTree
createVPCEndpointTest = undefined

describeImportSnapshotTasksTest :: DescribeImportSnapshotTasks -> TestTree
describeImportSnapshotTasksTest = undefined

copyImageTest :: CopyImage -> TestTree
copyImageTest = undefined

disassociateRouteTableTest :: DisassociateRouteTable -> TestTree
disassociateRouteTableTest = undefined

unmonitorInstancesTest :: UnmonitorInstances -> TestTree
unmonitorInstancesTest = undefined

importVolumeTest :: ImportVolume -> TestTree
importVolumeTest = undefined

disableVGWRoutePropagationTest :: DisableVGWRoutePropagation -> TestTree
disableVGWRoutePropagationTest = undefined

createSpotDatafeedSubscriptionTest :: CreateSpotDatafeedSubscription -> TestTree
createSpotDatafeedSubscriptionTest = undefined

assignPrivateIPAddressesTest :: AssignPrivateIPAddresses -> TestTree
assignPrivateIPAddressesTest = undefined

deleteSnapshotTest :: DeleteSnapshot -> TestTree
deleteSnapshotTest = undefined

deleteCustomerGatewayTest :: DeleteCustomerGateway -> TestTree
deleteCustomerGatewayTest = undefined

modifyInstanceAttributeTest :: ModifyInstanceAttribute -> TestTree
modifyInstanceAttributeTest = undefined

createSecurityGroupTest :: CreateSecurityGroup -> TestTree
createSecurityGroupTest = undefined

cancelSpotInstanceRequestsTest :: CancelSpotInstanceRequests -> TestTree
cancelSpotInstanceRequestsTest = undefined

createRouteTest :: CreateRoute -> TestTree
createRouteTest = undefined

createNetworkACLEntryTest :: CreateNetworkACLEntry -> TestTree
createNetworkACLEntryTest = undefined

modifySnapshotAttributeTest :: ModifySnapshotAttribute -> TestTree
modifySnapshotAttributeTest = undefined

enableVGWRoutePropagationTest :: EnableVGWRoutePropagation -> TestTree
enableVGWRoutePropagationTest = undefined

createSnapshotTest :: CreateSnapshot -> TestTree
createSnapshotTest = undefined

describeSpotFleetRequestHistoryTest :: DescribeSpotFleetRequestHistory -> TestTree
describeSpotFleetRequestHistoryTest = undefined

deleteSpotDatafeedSubscriptionTest :: DeleteSpotDatafeedSubscription -> TestTree
deleteSpotDatafeedSubscriptionTest = undefined

describePlacementGroupsTest :: DescribePlacementGroups -> TestTree
describePlacementGroupsTest = undefined

createReservedInstancesListingTest :: CreateReservedInstancesListing -> TestTree
createReservedInstancesListingTest = undefined

enableVPCClassicLinkTest :: EnableVPCClassicLink -> TestTree
enableVPCClassicLinkTest = undefined

describeKeyPairsTest :: DescribeKeyPairs -> TestTree
describeKeyPairsTest = undefined

rebootInstancesTest :: RebootInstances -> TestTree
rebootInstancesTest = undefined

attachVPNGatewayTest :: AttachVPNGateway -> TestTree
attachVPNGatewayTest = undefined

createVPNConnectionRouteTest :: CreateVPNConnectionRoute -> TestTree
createVPNConnectionRouteTest = undefined

describeClassicLinkInstancesTest :: DescribeClassicLinkInstances -> TestTree
describeClassicLinkInstancesTest = undefined

terminateInstancesTest :: TerminateInstances -> TestTree
terminateInstancesTest = undefined

createDHCPOptionsTest :: CreateDHCPOptions -> TestTree
createDHCPOptionsTest = undefined

associateRouteTableTest :: AssociateRouteTable -> TestTree
associateRouteTableTest = undefined

createImageTest :: CreateImage -> TestTree
createImageTest = undefined

describeAccountAttributesTest :: DescribeAccountAttributes -> TestTree
describeAccountAttributesTest = undefined

resetImageAttributeTest :: ResetImageAttribute -> TestTree
resetImageAttributeTest = undefined

describeNetworkACLsTest :: DescribeNetworkACLs -> TestTree
describeNetworkACLsTest = undefined

cancelImportTaskTest :: CancelImportTask -> TestTree
cancelImportTaskTest = undefined

getConsoleOutputTest :: GetConsoleOutput -> TestTree
getConsoleOutputTest = undefined

unassignPrivateIPAddressesTest :: UnassignPrivateIPAddresses -> TestTree
unassignPrivateIPAddressesTest = undefined

deleteRouteTableTest :: DeleteRouteTable -> TestTree
deleteRouteTableTest = undefined

describeImageAttributeTest :: DescribeImageAttribute -> TestTree
describeImageAttributeTest = undefined

deleteDHCPOptionsTest :: DeleteDHCPOptions -> TestTree
deleteDHCPOptionsTest = undefined

describeVPNGatewaysTest :: DescribeVPNGateways -> TestTree
describeVPNGatewaysTest = undefined

detachClassicLinkVPCTest :: DetachClassicLinkVPC -> TestTree
detachClassicLinkVPCTest = undefined

describeReservedInstancesModificationsTest :: DescribeReservedInstancesModifications -> TestTree
describeReservedInstancesModificationsTest = undefined

describeSpotInstanceRequestsTest :: DescribeSpotInstanceRequests -> TestTree
describeSpotInstanceRequestsTest = undefined

monitorInstancesTest :: MonitorInstances -> TestTree
monitorInstancesTest = undefined

describeRegionsTest :: DescribeRegions -> TestTree
describeRegionsTest = undefined

modifyVPCAttributeTest :: ModifyVPCAttribute -> TestTree
modifyVPCAttributeTest = undefined

describeSpotFleetInstancesTest :: DescribeSpotFleetInstances -> TestTree
describeSpotFleetInstancesTest = undefined

describeVolumeStatusTest :: DescribeVolumeStatus -> TestTree
describeVolumeStatusTest = undefined

deleteVolumeTest :: DeleteVolume -> TestTree
deleteVolumeTest = undefined

describeImagesTest :: DescribeImages -> TestTree
describeImagesTest = undefined

createKeyPairTest :: CreateKeyPair -> TestTree
createKeyPairTest = undefined

restoreAddressToClassicTest :: RestoreAddressToClassic -> TestTree
restoreAddressToClassicTest = undefined

describeAvailabilityZonesTest :: DescribeAvailabilityZones -> TestTree
describeAvailabilityZonesTest = undefined

importSnapshotTest :: ImportSnapshot -> TestTree
importSnapshotTest = undefined

acceptVPCPeeringConnectionTest :: AcceptVPCPeeringConnection -> TestTree
acceptVPCPeeringConnectionTest = undefined

describeRouteTablesTest :: DescribeRouteTables -> TestTree
describeRouteTablesTest = undefined

-- Responses

detachNetworkInterfaceResponseTest :: DetachNetworkInterfaceResponse -> TestTree
detachNetworkInterfaceResponseTest = resp
    "DetachNetworkInterface"
    "fixture/EC2/DetachNetworkInterfaceResponse"
    (Proxy :: Proxy DetachNetworkInterface)

deleteVPCEndpointsResponseTest :: DeleteVPCEndpointsResponse -> TestTree
deleteVPCEndpointsResponseTest = resp
    "DeleteVPCEndpoints"
    "fixture/EC2/DeleteVPCEndpointsResponse"
    (Proxy :: Proxy DeleteVPCEndpoints)

deleteKeyPairResponseTest :: DeleteKeyPairResponse -> TestTree
deleteKeyPairResponseTest = resp
    "DeleteKeyPair"
    "fixture/EC2/DeleteKeyPairResponse"
    (Proxy :: Proxy DeleteKeyPair)

deleteFlowLogsResponseTest :: DeleteFlowLogsResponse -> TestTree
deleteFlowLogsResponseTest = resp
    "DeleteFlowLogs"
    "fixture/EC2/DeleteFlowLogsResponse"
    (Proxy :: Proxy DeleteFlowLogs)

describeTagsResponseTest :: DescribeTagsResponse -> TestTree
describeTagsResponseTest = resp
    "DescribeTags"
    "fixture/EC2/DescribeTagsResponse"
    (Proxy :: Proxy DescribeTags)

revokeSecurityGroupEgressResponseTest :: RevokeSecurityGroupEgressResponse -> TestTree
revokeSecurityGroupEgressResponseTest = resp
    "RevokeSecurityGroupEgress"
    "fixture/EC2/RevokeSecurityGroupEgressResponse"
    (Proxy :: Proxy RevokeSecurityGroupEgress)

createVPNGatewayResponseTest :: CreateVPNGatewayResponse -> TestTree
createVPNGatewayResponseTest = resp
    "CreateVPNGateway"
    "fixture/EC2/CreateVPNGatewayResponse"
    (Proxy :: Proxy CreateVPNGateway)

detachInternetGatewayResponseTest :: DetachInternetGatewayResponse -> TestTree
detachInternetGatewayResponseTest = resp
    "DetachInternetGateway"
    "fixture/EC2/DetachInternetGatewayResponse"
    (Proxy :: Proxy DetachInternetGateway)

createNetworkACLResponseTest :: CreateNetworkACLResponse -> TestTree
createNetworkACLResponseTest = resp
    "CreateNetworkACL"
    "fixture/EC2/CreateNetworkACLResponse"
    (Proxy :: Proxy CreateNetworkACL)

importInstanceResponseTest :: ImportInstanceResponse -> TestTree
importInstanceResponseTest = resp
    "ImportInstance"
    "fixture/EC2/ImportInstanceResponse"
    (Proxy :: Proxy ImportInstance)

describeVPCClassicLinkResponseTest :: DescribeVPCClassicLinkResponse -> TestTree
describeVPCClassicLinkResponseTest = resp
    "DescribeVPCClassicLink"
    "fixture/EC2/DescribeVPCClassicLinkResponse"
    (Proxy :: Proxy DescribeVPCClassicLink)

deleteVPNConnectionResponseTest :: DeleteVPNConnectionResponse -> TestTree
deleteVPNConnectionResponseTest = resp
    "DeleteVPNConnection"
    "fixture/EC2/DeleteVPNConnectionResponse"
    (Proxy :: Proxy DeleteVPNConnection)

authorizeSecurityGroupEgressResponseTest :: AuthorizeSecurityGroupEgressResponse -> TestTree
authorizeSecurityGroupEgressResponseTest = resp
    "AuthorizeSecurityGroupEgress"
    "fixture/EC2/AuthorizeSecurityGroupEgressResponse"
    (Proxy :: Proxy AuthorizeSecurityGroupEgress)

describeBundleTasksResponseTest :: DescribeBundleTasksResponse -> TestTree
describeBundleTasksResponseTest = resp
    "DescribeBundleTasks"
    "fixture/EC2/DescribeBundleTasksResponse"
    (Proxy :: Proxy DescribeBundleTasks)

createInternetGatewayResponseTest :: CreateInternetGatewayResponse -> TestTree
createInternetGatewayResponseTest = resp
    "CreateInternetGateway"
    "fixture/EC2/CreateInternetGatewayResponse"
    (Proxy :: Proxy CreateInternetGateway)

releaseAddressResponseTest :: ReleaseAddressResponse -> TestTree
releaseAddressResponseTest = resp
    "ReleaseAddress"
    "fixture/EC2/ReleaseAddressResponse"
    (Proxy :: Proxy ReleaseAddress)

cancelBundleTaskResponseTest :: CancelBundleTaskResponse -> TestTree
cancelBundleTaskResponseTest = resp
    "CancelBundleTask"
    "fixture/EC2/CancelBundleTaskResponse"
    (Proxy :: Proxy CancelBundleTask)

modifyNetworkInterfaceAttributeResponseTest :: ModifyNetworkInterfaceAttributeResponse -> TestTree
modifyNetworkInterfaceAttributeResponseTest = resp
    "ModifyNetworkInterfaceAttribute"
    "fixture/EC2/ModifyNetworkInterfaceAttributeResponse"
    (Proxy :: Proxy ModifyNetworkInterfaceAttribute)

modifySubnetAttributeResponseTest :: ModifySubnetAttributeResponse -> TestTree
modifySubnetAttributeResponseTest = resp
    "ModifySubnetAttribute"
    "fixture/EC2/ModifySubnetAttributeResponse"
    (Proxy :: Proxy ModifySubnetAttribute)

deregisterImageResponseTest :: DeregisterImageResponse -> TestTree
deregisterImageResponseTest = resp
    "DeregisterImage"
    "fixture/EC2/DeregisterImageResponse"
    (Proxy :: Proxy DeregisterImage)

volumeAttachmentTest :: VolumeAttachment -> TestTree
volumeAttachmentTest = resp
    "DetachVolume"
    "fixture/EC2/VolumeAttachment"
    (Proxy :: Proxy DetachVolume)

cancelReservedInstancesListingResponseTest :: CancelReservedInstancesListingResponse -> TestTree
cancelReservedInstancesListingResponseTest = resp
    "CancelReservedInstancesListing"
    "fixture/EC2/CancelReservedInstancesListingResponse"
    (Proxy :: Proxy CancelReservedInstancesListing)

attachClassicLinkVPCResponseTest :: AttachClassicLinkVPCResponse -> TestTree
attachClassicLinkVPCResponseTest = resp
    "AttachClassicLinkVPC"
    "fixture/EC2/AttachClassicLinkVPCResponse"
    (Proxy :: Proxy AttachClassicLinkVPC)

cancelSpotFleetRequestsResponseTest :: CancelSpotFleetRequestsResponse -> TestTree
cancelSpotFleetRequestsResponseTest = resp
    "CancelSpotFleetRequests"
    "fixture/EC2/CancelSpotFleetRequestsResponse"
    (Proxy :: Proxy CancelSpotFleetRequests)

describeDHCPOptionsResponseTest :: DescribeDHCPOptionsResponse -> TestTree
describeDHCPOptionsResponseTest = resp
    "DescribeDHCPOptions"
    "fixture/EC2/DescribeDHCPOptionsResponse"
    (Proxy :: Proxy DescribeDHCPOptions)

describeSpotPriceHistoryResponseTest :: DescribeSpotPriceHistoryResponse -> TestTree
describeSpotPriceHistoryResponseTest = resp
    "DescribeSpotPriceHistory"
    "fixture/EC2/DescribeSpotPriceHistoryResponse"
    (Proxy :: Proxy DescribeSpotPriceHistory)

stopInstancesResponseTest :: StopInstancesResponse -> TestTree
stopInstancesResponseTest = resp
    "StopInstances"
    "fixture/EC2/StopInstancesResponse"
    (Proxy :: Proxy StopInstances)

importImageResponseTest :: ImportImageResponse -> TestTree
importImageResponseTest = resp
    "ImportImage"
    "fixture/EC2/ImportImageResponse"
    (Proxy :: Proxy ImportImage)

deleteNetworkACLEntryResponseTest :: DeleteNetworkACLEntryResponse -> TestTree
deleteNetworkACLEntryResponseTest = resp
    "DeleteNetworkACLEntry"
    "fixture/EC2/DeleteNetworkACLEntryResponse"
    (Proxy :: Proxy DeleteNetworkACLEntry)

disableVPCClassicLinkResponseTest :: DisableVPCClassicLinkResponse -> TestTree
disableVPCClassicLinkResponseTest = resp
    "DisableVPCClassicLink"
    "fixture/EC2/DisableVPCClassicLinkResponse"
    (Proxy :: Proxy DisableVPCClassicLink)

authorizeSecurityGroupIngressResponseTest :: AuthorizeSecurityGroupIngressResponse -> TestTree
authorizeSecurityGroupIngressResponseTest = resp
    "AuthorizeSecurityGroupIngress"
    "fixture/EC2/AuthorizeSecurityGroupIngressResponse"
    (Proxy :: Proxy AuthorizeSecurityGroupIngress)

bundleInstanceResponseTest :: BundleInstanceResponse -> TestTree
bundleInstanceResponseTest = resp
    "BundleInstance"
    "fixture/EC2/BundleInstanceResponse"
    (Proxy :: Proxy BundleInstance)

describeVPCEndpointServicesResponseTest :: DescribeVPCEndpointServicesResponse -> TestTree
describeVPCEndpointServicesResponseTest = resp
    "DescribeVPCEndpointServices"
    "fixture/EC2/DescribeVPCEndpointServicesResponse"
    (Proxy :: Proxy DescribeVPCEndpointServices)

replaceNetworkACLAssociationResponseTest :: ReplaceNetworkACLAssociationResponse -> TestTree
replaceNetworkACLAssociationResponseTest = resp
    "ReplaceNetworkACLAssociation"
    "fixture/EC2/ReplaceNetworkACLAssociationResponse"
    (Proxy :: Proxy ReplaceNetworkACLAssociation)

createVPCPeeringConnectionResponseTest :: CreateVPCPeeringConnectionResponse -> TestTree
createVPCPeeringConnectionResponseTest = resp
    "CreateVPCPeeringConnection"
    "fixture/EC2/CreateVPCPeeringConnectionResponse"
    (Proxy :: Proxy CreateVPCPeeringConnection)

resetSnapshotAttributeResponseTest :: ResetSnapshotAttributeResponse -> TestTree
resetSnapshotAttributeResponseTest = resp
    "ResetSnapshotAttribute"
    "fixture/EC2/ResetSnapshotAttributeResponse"
    (Proxy :: Proxy ResetSnapshotAttribute)

describeAddressesResponseTest :: DescribeAddressesResponse -> TestTree
describeAddressesResponseTest = resp
    "DescribeAddresses"
    "fixture/EC2/DescribeAddressesResponse"
    (Proxy :: Proxy DescribeAddresses)

describeInternetGatewaysResponseTest :: DescribeInternetGatewaysResponse -> TestTree
describeInternetGatewaysResponseTest = resp
    "DescribeInternetGateways"
    "fixture/EC2/DescribeInternetGatewaysResponse"
    (Proxy :: Proxy DescribeInternetGateways)

replaceRouteResponseTest :: ReplaceRouteResponse -> TestTree
replaceRouteResponseTest = resp
    "ReplaceRoute"
    "fixture/EC2/ReplaceRouteResponse"
    (Proxy :: Proxy ReplaceRoute)

createTagsResponseTest :: CreateTagsResponse -> TestTree
createTagsResponseTest = resp
    "CreateTags"
    "fixture/EC2/CreateTagsResponse"
    (Proxy :: Proxy CreateTags)

describeSubnetsResponseTest :: DescribeSubnetsResponse -> TestTree
describeSubnetsResponseTest = resp
    "DescribeSubnets"
    "fixture/EC2/DescribeSubnetsResponse"
    (Proxy :: Proxy DescribeSubnets)

describeNetworkInterfacesResponseTest :: DescribeNetworkInterfacesResponse -> TestTree
describeNetworkInterfacesResponseTest = resp
    "DescribeNetworkInterfaces"
    "fixture/EC2/DescribeNetworkInterfacesResponse"
    (Proxy :: Proxy DescribeNetworkInterfaces)

purchaseReservedInstancesOfferingResponseTest :: PurchaseReservedInstancesOfferingResponse -> TestTree
purchaseReservedInstancesOfferingResponseTest = resp
    "PurchaseReservedInstancesOffering"
    "fixture/EC2/PurchaseReservedInstancesOfferingResponse"
    (Proxy :: Proxy PurchaseReservedInstancesOffering)

describeSnapshotAttributeResponseTest :: DescribeSnapshotAttributeResponse -> TestTree
describeSnapshotAttributeResponseTest = resp
    "DescribeSnapshotAttribute"
    "fixture/EC2/DescribeSnapshotAttributeResponse"
    (Proxy :: Proxy DescribeSnapshotAttribute)

createCustomerGatewayResponseTest :: CreateCustomerGatewayResponse -> TestTree
createCustomerGatewayResponseTest = resp
    "CreateCustomerGateway"
    "fixture/EC2/CreateCustomerGatewayResponse"
    (Proxy :: Proxy CreateCustomerGateway)

attachInternetGatewayResponseTest :: AttachInternetGatewayResponse -> TestTree
attachInternetGatewayResponseTest = resp
    "AttachInternetGateway"
    "fixture/EC2/AttachInternetGatewayResponse"
    (Proxy :: Proxy AttachInternetGateway)

deleteTagsResponseTest :: DeleteTagsResponse -> TestTree
deleteTagsResponseTest = resp
    "DeleteTags"
    "fixture/EC2/DeleteTagsResponse"
    (Proxy :: Proxy DeleteTags)

replaceNetworkACLEntryResponseTest :: ReplaceNetworkACLEntryResponse -> TestTree
replaceNetworkACLEntryResponseTest = resp
    "ReplaceNetworkACLEntry"
    "fixture/EC2/ReplaceNetworkACLEntryResponse"
    (Proxy :: Proxy ReplaceNetworkACLEntry)

resetInstanceAttributeResponseTest :: ResetInstanceAttributeResponse -> TestTree
resetInstanceAttributeResponseTest = resp
    "ResetInstanceAttribute"
    "fixture/EC2/ResetInstanceAttributeResponse"
    (Proxy :: Proxy ResetInstanceAttribute)

deleteRouteResponseTest :: DeleteRouteResponse -> TestTree
deleteRouteResponseTest = resp
    "DeleteRoute"
    "fixture/EC2/DeleteRouteResponse"
    (Proxy :: Proxy DeleteRoute)

describeVPNConnectionsResponseTest :: DescribeVPNConnectionsResponse -> TestTree
describeVPNConnectionsResponseTest = resp
    "DescribeVPNConnections"
    "fixture/EC2/DescribeVPNConnectionsResponse"
    (Proxy :: Proxy DescribeVPNConnections)

describeFlowLogsResponseTest :: DescribeFlowLogsResponse -> TestTree
describeFlowLogsResponseTest = resp
    "DescribeFlowLogs"
    "fixture/EC2/DescribeFlowLogsResponse"
    (Proxy :: Proxy DescribeFlowLogs)

deleteSecurityGroupResponseTest :: DeleteSecurityGroupResponse -> TestTree
deleteSecurityGroupResponseTest = resp
    "DeleteSecurityGroup"
    "fixture/EC2/DeleteSecurityGroupResponse"
    (Proxy :: Proxy DeleteSecurityGroup)

describeReservedInstancesOfferingsResponseTest :: DescribeReservedInstancesOfferingsResponse -> TestTree
describeReservedInstancesOfferingsResponseTest = resp
    "DescribeReservedInstancesOfferings"
    "fixture/EC2/DescribeReservedInstancesOfferingsResponse"
    (Proxy :: Proxy DescribeReservedInstancesOfferings)

deleteVPCPeeringConnectionResponseTest :: DeleteVPCPeeringConnectionResponse -> TestTree
deleteVPCPeeringConnectionResponseTest = resp
    "DeleteVPCPeeringConnection"
    "fixture/EC2/DeleteVPCPeeringConnectionResponse"
    (Proxy :: Proxy DeleteVPCPeeringConnection)

describeVPCEndpointsResponseTest :: DescribeVPCEndpointsResponse -> TestTree
describeVPCEndpointsResponseTest = resp
    "DescribeVPCEndpoints"
    "fixture/EC2/DescribeVPCEndpointsResponse"
    (Proxy :: Proxy DescribeVPCEndpoints)

describeInstanceAttributeResponseTest :: DescribeInstanceAttributeResponse -> TestTree
describeInstanceAttributeResponseTest = resp
    "DescribeInstanceAttribute"
    "fixture/EC2/DescribeInstanceAttributeResponse"
    (Proxy :: Proxy DescribeInstanceAttribute)

confirmProductInstanceResponseTest :: ConfirmProductInstanceResponse -> TestTree
confirmProductInstanceResponseTest = resp
    "ConfirmProductInstance"
    "fixture/EC2/ConfirmProductInstanceResponse"
    (Proxy :: Proxy ConfirmProductInstance)

importKeyPairResponseTest :: ImportKeyPairResponse -> TestTree
importKeyPairResponseTest = resp
    "ImportKeyPair"
    "fixture/EC2/ImportKeyPairResponse"
    (Proxy :: Proxy ImportKeyPair)

attachNetworkInterfaceResponseTest :: AttachNetworkInterfaceResponse -> TestTree
attachNetworkInterfaceResponseTest = resp
    "AttachNetworkInterface"
    "fixture/EC2/AttachNetworkInterfaceResponse"
    (Proxy :: Proxy AttachNetworkInterface)

describeInstanceStatusResponseTest :: DescribeInstanceStatusResponse -> TestTree
describeInstanceStatusResponseTest = resp
    "DescribeInstanceStatus"
    "fixture/EC2/DescribeInstanceStatusResponse"
    (Proxy :: Proxy DescribeInstanceStatus)

cancelConversionTaskResponseTest :: CancelConversionTaskResponse -> TestTree
cancelConversionTaskResponseTest = resp
    "CancelConversionTask"
    "fixture/EC2/CancelConversionTaskResponse"
    (Proxy :: Proxy CancelConversionTask)

reportInstanceStatusResponseTest :: ReportInstanceStatusResponse -> TestTree
reportInstanceStatusResponseTest = resp
    "ReportInstanceStatus"
    "fixture/EC2/ReportInstanceStatusResponse"
    (Proxy :: Proxy ReportInstanceStatus)

associateDHCPOptionsResponseTest :: AssociateDHCPOptionsResponse -> TestTree
associateDHCPOptionsResponseTest = resp
    "AssociateDHCPOptions"
    "fixture/EC2/AssociateDHCPOptionsResponse"
    (Proxy :: Proxy AssociateDHCPOptions)

describeVPCsResponseTest :: DescribeVPCsResponse -> TestTree
describeVPCsResponseTest = resp
    "DescribeVPCs"
    "fixture/EC2/DescribeVPCsResponse"
    (Proxy :: Proxy DescribeVPCs)

requestSpotInstancesResponseTest :: RequestSpotInstancesResponse -> TestTree
requestSpotInstancesResponseTest = resp
    "RequestSpotInstances"
    "fixture/EC2/RequestSpotInstancesResponse"
    (Proxy :: Proxy RequestSpotInstances)

modifyImageAttributeResponseTest :: ModifyImageAttributeResponse -> TestTree
modifyImageAttributeResponseTest = resp
    "ModifyImageAttribute"
    "fixture/EC2/ModifyImageAttributeResponse"
    (Proxy :: Proxy ModifyImageAttribute)

describeReservedInstancesResponseTest :: DescribeReservedInstancesResponse -> TestTree
describeReservedInstancesResponseTest = resp
    "DescribeReservedInstances"
    "fixture/EC2/DescribeReservedInstancesResponse"
    (Proxy :: Proxy DescribeReservedInstances)

allocateAddressResponseTest :: AllocateAddressResponse -> TestTree
allocateAddressResponseTest = resp
    "AllocateAddress"
    "fixture/EC2/AllocateAddressResponse"
    (Proxy :: Proxy AllocateAddress)

reservationTest :: Reservation -> TestTree
reservationTest = resp
    "RunInstances"
    "fixture/EC2/Reservation"
    (Proxy :: Proxy RunInstances)

createRouteTableResponseTest :: CreateRouteTableResponse -> TestTree
createRouteTableResponseTest = resp
    "CreateRouteTable"
    "fixture/EC2/CreateRouteTableResponse"
    (Proxy :: Proxy CreateRouteTable)

volumeAttachmentTest :: VolumeAttachment -> TestTree
volumeAttachmentTest = resp
    "AttachVolume"
    "fixture/EC2/VolumeAttachment"
    (Proxy :: Proxy AttachVolume)

describeConversionTasksResponseTest :: DescribeConversionTasksResponse -> TestTree
describeConversionTasksResponseTest = resp
    "DescribeConversionTasks"
    "fixture/EC2/DescribeConversionTasksResponse"
    (Proxy :: Proxy DescribeConversionTasks)

rejectVPCPeeringConnectionResponseTest :: RejectVPCPeeringConnectionResponse -> TestTree
rejectVPCPeeringConnectionResponseTest = resp
    "RejectVPCPeeringConnection"
    "fixture/EC2/RejectVPCPeeringConnectionResponse"
    (Proxy :: Proxy RejectVPCPeeringConnection)

revokeSecurityGroupIngressResponseTest :: RevokeSecurityGroupIngressResponse -> TestTree
revokeSecurityGroupIngressResponseTest = resp
    "RevokeSecurityGroupIngress"
    "fixture/EC2/RevokeSecurityGroupIngressResponse"
    (Proxy :: Proxy RevokeSecurityGroupIngress)

describeVolumesResponseTest :: DescribeVolumesResponse -> TestTree
describeVolumesResponseTest = resp
    "DescribeVolumes"
    "fixture/EC2/DescribeVolumesResponse"
    (Proxy :: Proxy DescribeVolumes)

deleteVPNConnectionRouteResponseTest :: DeleteVPNConnectionRouteResponse -> TestTree
deleteVPNConnectionRouteResponseTest = resp
    "DeleteVPNConnectionRoute"
    "fixture/EC2/DeleteVPNConnectionRouteResponse"
    (Proxy :: Proxy DeleteVPNConnectionRoute)

modifyReservedInstancesResponseTest :: ModifyReservedInstancesResponse -> TestTree
modifyReservedInstancesResponseTest = resp
    "ModifyReservedInstances"
    "fixture/EC2/ModifyReservedInstancesResponse"
    (Proxy :: Proxy ModifyReservedInstances)

registerImageResponseTest :: RegisterImageResponse -> TestTree
registerImageResponseTest = resp
    "RegisterImage"
    "fixture/EC2/RegisterImageResponse"
    (Proxy :: Proxy RegisterImage)

modifyVPCEndpointResponseTest :: ModifyVPCEndpointResponse -> TestTree
modifyVPCEndpointResponseTest = resp
    "ModifyVPCEndpoint"
    "fixture/EC2/ModifyVPCEndpointResponse"
    (Proxy :: Proxy ModifyVPCEndpoint)

deleteVPNGatewayResponseTest :: DeleteVPNGatewayResponse -> TestTree
deleteVPNGatewayResponseTest = resp
    "DeleteVPNGateway"
    "fixture/EC2/DeleteVPNGatewayResponse"
    (Proxy :: Proxy DeleteVPNGateway)

createVPCResponseTest :: CreateVPCResponse -> TestTree
createVPCResponseTest = resp
    "CreateVPC"
    "fixture/EC2/CreateVPCResponse"
    (Proxy :: Proxy CreateVPC)

describeMovingAddressesResponseTest :: DescribeMovingAddressesResponse -> TestTree
describeMovingAddressesResponseTest = resp
    "DescribeMovingAddresses"
    "fixture/EC2/DescribeMovingAddressesResponse"
    (Proxy :: Proxy DescribeMovingAddresses)

describeVolumeAttributeResponseTest :: DescribeVolumeAttributeResponse -> TestTree
describeVolumeAttributeResponseTest = resp
    "DescribeVolumeAttribute"
    "fixture/EC2/DescribeVolumeAttributeResponse"
    (Proxy :: Proxy DescribeVolumeAttribute)

moveAddressToVPCResponseTest :: MoveAddressToVPCResponse -> TestTree
moveAddressToVPCResponseTest = resp
    "MoveAddressToVPC"
    "fixture/EC2/MoveAddressToVPCResponse"
    (Proxy :: Proxy MoveAddressToVPC)

getPasswordDataResponseTest :: GetPasswordDataResponse -> TestTree
getPasswordDataResponseTest = resp
    "GetPasswordData"
    "fixture/EC2/GetPasswordDataResponse"
    (Proxy :: Proxy GetPasswordData)

createFlowLogsResponseTest :: CreateFlowLogsResponse -> TestTree
createFlowLogsResponseTest = resp
    "CreateFlowLogs"
    "fixture/EC2/CreateFlowLogsResponse"
    (Proxy :: Proxy CreateFlowLogs)

describeImportImageTasksResponseTest :: DescribeImportImageTasksResponse -> TestTree
describeImportImageTasksResponseTest = resp
    "DescribeImportImageTasks"
    "fixture/EC2/DescribeImportImageTasksResponse"
    (Proxy :: Proxy DescribeImportImageTasks)

deleteNetworkACLResponseTest :: DeleteNetworkACLResponse -> TestTree
deleteNetworkACLResponseTest = resp
    "DeleteNetworkACL"
    "fixture/EC2/DeleteNetworkACLResponse"
    (Proxy :: Proxy DeleteNetworkACL)

describeSpotFleetRequestsResponseTest :: DescribeSpotFleetRequestsResponse -> TestTree
describeSpotFleetRequestsResponseTest = resp
    "DescribeSpotFleetRequests"
    "fixture/EC2/DescribeSpotFleetRequestsResponse"
    (Proxy :: Proxy DescribeSpotFleetRequests)

copySnapshotResponseTest :: CopySnapshotResponse -> TestTree
copySnapshotResponseTest = resp
    "CopySnapshot"
    "fixture/EC2/CopySnapshotResponse"
    (Proxy :: Proxy CopySnapshot)

modifyVolumeAttributeResponseTest :: ModifyVolumeAttributeResponse -> TestTree
modifyVolumeAttributeResponseTest = resp
    "ModifyVolumeAttribute"
    "fixture/EC2/ModifyVolumeAttributeResponse"
    (Proxy :: Proxy ModifyVolumeAttribute)

describeVPCAttributeResponseTest :: DescribeVPCAttributeResponse -> TestTree
describeVPCAttributeResponseTest = resp
    "DescribeVPCAttribute"
    "fixture/EC2/DescribeVPCAttributeResponse"
    (Proxy :: Proxy DescribeVPCAttribute)

volumeTest :: Volume -> TestTree
volumeTest = resp
    "CreateVolume"
    "fixture/EC2/Volume"
    (Proxy :: Proxy CreateVolume)

disassociateAddressResponseTest :: DisassociateAddressResponse -> TestTree
disassociateAddressResponseTest = resp
    "DisassociateAddress"
    "fixture/EC2/DisassociateAddressResponse"
    (Proxy :: Proxy DisassociateAddress)

deleteVPCResponseTest :: DeleteVPCResponse -> TestTree
deleteVPCResponseTest = resp
    "DeleteVPC"
    "fixture/EC2/DeleteVPCResponse"
    (Proxy :: Proxy DeleteVPC)

describePrefixListsResponseTest :: DescribePrefixListsResponse -> TestTree
describePrefixListsResponseTest = resp
    "DescribePrefixLists"
    "fixture/EC2/DescribePrefixListsResponse"
    (Proxy :: Proxy DescribePrefixLists)

createInstanceExportTaskResponseTest :: CreateInstanceExportTaskResponse -> TestTree
createInstanceExportTaskResponseTest = resp
    "CreateInstanceExportTask"
    "fixture/EC2/CreateInstanceExportTaskResponse"
    (Proxy :: Proxy CreateInstanceExportTask)

describeSpotDatafeedSubscriptionResponseTest :: DescribeSpotDatafeedSubscriptionResponse -> TestTree
describeSpotDatafeedSubscriptionResponseTest = resp
    "DescribeSpotDatafeedSubscription"
    "fixture/EC2/DescribeSpotDatafeedSubscriptionResponse"
    (Proxy :: Proxy DescribeSpotDatafeedSubscription)

detachVPNGatewayResponseTest :: DetachVPNGatewayResponse -> TestTree
detachVPNGatewayResponseTest = resp
    "DetachVPNGateway"
    "fixture/EC2/DetachVPNGatewayResponse"
    (Proxy :: Proxy DetachVPNGateway)

describeExportTasksResponseTest :: DescribeExportTasksResponse -> TestTree
describeExportTasksResponseTest = resp
    "DescribeExportTasks"
    "fixture/EC2/DescribeExportTasksResponse"
    (Proxy :: Proxy DescribeExportTasks)

deletePlacementGroupResponseTest :: DeletePlacementGroupResponse -> TestTree
deletePlacementGroupResponseTest = resp
    "DeletePlacementGroup"
    "fixture/EC2/DeletePlacementGroupResponse"
    (Proxy :: Proxy DeletePlacementGroup)

createSubnetResponseTest :: CreateSubnetResponse -> TestTree
createSubnetResponseTest = resp
    "CreateSubnet"
    "fixture/EC2/CreateSubnetResponse"
    (Proxy :: Proxy CreateSubnet)

enableVolumeIOResponseTest :: EnableVolumeIOResponse -> TestTree
enableVolumeIOResponseTest = resp
    "EnableVolumeIO"
    "fixture/EC2/EnableVolumeIOResponse"
    (Proxy :: Proxy EnableVolumeIO)

cancelExportTaskResponseTest :: CancelExportTaskResponse -> TestTree
cancelExportTaskResponseTest = resp
    "CancelExportTask"
    "fixture/EC2/CancelExportTaskResponse"
    (Proxy :: Proxy CancelExportTask)

requestSpotFleetResponseTest :: RequestSpotFleetResponse -> TestTree
requestSpotFleetResponseTest = resp
    "RequestSpotFleet"
    "fixture/EC2/RequestSpotFleetResponse"
    (Proxy :: Proxy RequestSpotFleet)

describeInstancesResponseTest :: DescribeInstancesResponse -> TestTree
describeInstancesResponseTest = resp
    "DescribeInstances"
    "fixture/EC2/DescribeInstancesResponse"
    (Proxy :: Proxy DescribeInstances)

describeSecurityGroupsResponseTest :: DescribeSecurityGroupsResponse -> TestTree
describeSecurityGroupsResponseTest = resp
    "DescribeSecurityGroups"
    "fixture/EC2/DescribeSecurityGroupsResponse"
    (Proxy :: Proxy DescribeSecurityGroups)

describeVPCPeeringConnectionsResponseTest :: DescribeVPCPeeringConnectionsResponse -> TestTree
describeVPCPeeringConnectionsResponseTest = resp
    "DescribeVPCPeeringConnections"
    "fixture/EC2/DescribeVPCPeeringConnectionsResponse"
    (Proxy :: Proxy DescribeVPCPeeringConnections)

createNetworkInterfaceResponseTest :: CreateNetworkInterfaceResponse -> TestTree
createNetworkInterfaceResponseTest = resp
    "CreateNetworkInterface"
    "fixture/EC2/CreateNetworkInterfaceResponse"
    (Proxy :: Proxy CreateNetworkInterface)

associateAddressResponseTest :: AssociateAddressResponse -> TestTree
associateAddressResponseTest = resp
    "AssociateAddress"
    "fixture/EC2/AssociateAddressResponse"
    (Proxy :: Proxy AssociateAddress)

startInstancesResponseTest :: StartInstancesResponse -> TestTree
startInstancesResponseTest = resp
    "StartInstances"
    "fixture/EC2/StartInstancesResponse"
    (Proxy :: Proxy StartInstances)

describeCustomerGatewaysResponseTest :: DescribeCustomerGatewaysResponse -> TestTree
describeCustomerGatewaysResponseTest = resp
    "DescribeCustomerGateways"
    "fixture/EC2/DescribeCustomerGatewaysResponse"
    (Proxy :: Proxy DescribeCustomerGateways)

resetNetworkInterfaceAttributeResponseTest :: ResetNetworkInterfaceAttributeResponse -> TestTree
resetNetworkInterfaceAttributeResponseTest = resp
    "ResetNetworkInterfaceAttribute"
    "fixture/EC2/ResetNetworkInterfaceAttributeResponse"
    (Proxy :: Proxy ResetNetworkInterfaceAttribute)

createVPNConnectionResponseTest :: CreateVPNConnectionResponse -> TestTree
createVPNConnectionResponseTest = resp
    "CreateVPNConnection"
    "fixture/EC2/CreateVPNConnectionResponse"
    (Proxy :: Proxy CreateVPNConnection)

describeSnapshotsResponseTest :: DescribeSnapshotsResponse -> TestTree
describeSnapshotsResponseTest = resp
    "DescribeSnapshots"
    "fixture/EC2/DescribeSnapshotsResponse"
    (Proxy :: Proxy DescribeSnapshots)

createPlacementGroupResponseTest :: CreatePlacementGroupResponse -> TestTree
createPlacementGroupResponseTest = resp
    "CreatePlacementGroup"
    "fixture/EC2/CreatePlacementGroupResponse"
    (Proxy :: Proxy CreatePlacementGroup)

replaceRouteTableAssociationResponseTest :: ReplaceRouteTableAssociationResponse -> TestTree
replaceRouteTableAssociationResponseTest = resp
    "ReplaceRouteTableAssociation"
    "fixture/EC2/ReplaceRouteTableAssociationResponse"
    (Proxy :: Proxy ReplaceRouteTableAssociation)

describeNetworkInterfaceAttributeResponseTest :: DescribeNetworkInterfaceAttributeResponse -> TestTree
describeNetworkInterfaceAttributeResponseTest = resp
    "DescribeNetworkInterfaceAttribute"
    "fixture/EC2/DescribeNetworkInterfaceAttributeResponse"
    (Proxy :: Proxy DescribeNetworkInterfaceAttribute)

describeReservedInstancesListingsResponseTest :: DescribeReservedInstancesListingsResponse -> TestTree
describeReservedInstancesListingsResponseTest = resp
    "DescribeReservedInstancesListings"
    "fixture/EC2/DescribeReservedInstancesListingsResponse"
    (Proxy :: Proxy DescribeReservedInstancesListings)

deleteNetworkInterfaceResponseTest :: DeleteNetworkInterfaceResponse -> TestTree
deleteNetworkInterfaceResponseTest = resp
    "DeleteNetworkInterface"
    "fixture/EC2/DeleteNetworkInterfaceResponse"
    (Proxy :: Proxy DeleteNetworkInterface)

deleteInternetGatewayResponseTest :: DeleteInternetGatewayResponse -> TestTree
deleteInternetGatewayResponseTest = resp
    "DeleteInternetGateway"
    "fixture/EC2/DeleteInternetGatewayResponse"
    (Proxy :: Proxy DeleteInternetGateway)

deleteSubnetResponseTest :: DeleteSubnetResponse -> TestTree
deleteSubnetResponseTest = resp
    "DeleteSubnet"
    "fixture/EC2/DeleteSubnetResponse"
    (Proxy :: Proxy DeleteSubnet)

createVPCEndpointResponseTest :: CreateVPCEndpointResponse -> TestTree
createVPCEndpointResponseTest = resp
    "CreateVPCEndpoint"
    "fixture/EC2/CreateVPCEndpointResponse"
    (Proxy :: Proxy CreateVPCEndpoint)

describeImportSnapshotTasksResponseTest :: DescribeImportSnapshotTasksResponse -> TestTree
describeImportSnapshotTasksResponseTest = resp
    "DescribeImportSnapshotTasks"
    "fixture/EC2/DescribeImportSnapshotTasksResponse"
    (Proxy :: Proxy DescribeImportSnapshotTasks)

copyImageResponseTest :: CopyImageResponse -> TestTree
copyImageResponseTest = resp
    "CopyImage"
    "fixture/EC2/CopyImageResponse"
    (Proxy :: Proxy CopyImage)

disassociateRouteTableResponseTest :: DisassociateRouteTableResponse -> TestTree
disassociateRouteTableResponseTest = resp
    "DisassociateRouteTable"
    "fixture/EC2/DisassociateRouteTableResponse"
    (Proxy :: Proxy DisassociateRouteTable)

unmonitorInstancesResponseTest :: UnmonitorInstancesResponse -> TestTree
unmonitorInstancesResponseTest = resp
    "UnmonitorInstances"
    "fixture/EC2/UnmonitorInstancesResponse"
    (Proxy :: Proxy UnmonitorInstances)

importVolumeResponseTest :: ImportVolumeResponse -> TestTree
importVolumeResponseTest = resp
    "ImportVolume"
    "fixture/EC2/ImportVolumeResponse"
    (Proxy :: Proxy ImportVolume)

disableVGWRoutePropagationResponseTest :: DisableVGWRoutePropagationResponse -> TestTree
disableVGWRoutePropagationResponseTest = resp
    "DisableVGWRoutePropagation"
    "fixture/EC2/DisableVGWRoutePropagationResponse"
    (Proxy :: Proxy DisableVGWRoutePropagation)

createSpotDatafeedSubscriptionResponseTest :: CreateSpotDatafeedSubscriptionResponse -> TestTree
createSpotDatafeedSubscriptionResponseTest = resp
    "CreateSpotDatafeedSubscription"
    "fixture/EC2/CreateSpotDatafeedSubscriptionResponse"
    (Proxy :: Proxy CreateSpotDatafeedSubscription)

assignPrivateIPAddressesResponseTest :: AssignPrivateIPAddressesResponse -> TestTree
assignPrivateIPAddressesResponseTest = resp
    "AssignPrivateIPAddresses"
    "fixture/EC2/AssignPrivateIPAddressesResponse"
    (Proxy :: Proxy AssignPrivateIPAddresses)

deleteSnapshotResponseTest :: DeleteSnapshotResponse -> TestTree
deleteSnapshotResponseTest = resp
    "DeleteSnapshot"
    "fixture/EC2/DeleteSnapshotResponse"
    (Proxy :: Proxy DeleteSnapshot)

deleteCustomerGatewayResponseTest :: DeleteCustomerGatewayResponse -> TestTree
deleteCustomerGatewayResponseTest = resp
    "DeleteCustomerGateway"
    "fixture/EC2/DeleteCustomerGatewayResponse"
    (Proxy :: Proxy DeleteCustomerGateway)

modifyInstanceAttributeResponseTest :: ModifyInstanceAttributeResponse -> TestTree
modifyInstanceAttributeResponseTest = resp
    "ModifyInstanceAttribute"
    "fixture/EC2/ModifyInstanceAttributeResponse"
    (Proxy :: Proxy ModifyInstanceAttribute)

createSecurityGroupResponseTest :: CreateSecurityGroupResponse -> TestTree
createSecurityGroupResponseTest = resp
    "CreateSecurityGroup"
    "fixture/EC2/CreateSecurityGroupResponse"
    (Proxy :: Proxy CreateSecurityGroup)

cancelSpotInstanceRequestsResponseTest :: CancelSpotInstanceRequestsResponse -> TestTree
cancelSpotInstanceRequestsResponseTest = resp
    "CancelSpotInstanceRequests"
    "fixture/EC2/CancelSpotInstanceRequestsResponse"
    (Proxy :: Proxy CancelSpotInstanceRequests)

createRouteResponseTest :: CreateRouteResponse -> TestTree
createRouteResponseTest = resp
    "CreateRoute"
    "fixture/EC2/CreateRouteResponse"
    (Proxy :: Proxy CreateRoute)

createNetworkACLEntryResponseTest :: CreateNetworkACLEntryResponse -> TestTree
createNetworkACLEntryResponseTest = resp
    "CreateNetworkACLEntry"
    "fixture/EC2/CreateNetworkACLEntryResponse"
    (Proxy :: Proxy CreateNetworkACLEntry)

modifySnapshotAttributeResponseTest :: ModifySnapshotAttributeResponse -> TestTree
modifySnapshotAttributeResponseTest = resp
    "ModifySnapshotAttribute"
    "fixture/EC2/ModifySnapshotAttributeResponse"
    (Proxy :: Proxy ModifySnapshotAttribute)

enableVGWRoutePropagationResponseTest :: EnableVGWRoutePropagationResponse -> TestTree
enableVGWRoutePropagationResponseTest = resp
    "EnableVGWRoutePropagation"
    "fixture/EC2/EnableVGWRoutePropagationResponse"
    (Proxy :: Proxy EnableVGWRoutePropagation)

snapshotTest :: Snapshot -> TestTree
snapshotTest = resp
    "CreateSnapshot"
    "fixture/EC2/Snapshot"
    (Proxy :: Proxy CreateSnapshot)

describeSpotFleetRequestHistoryResponseTest :: DescribeSpotFleetRequestHistoryResponse -> TestTree
describeSpotFleetRequestHistoryResponseTest = resp
    "DescribeSpotFleetRequestHistory"
    "fixture/EC2/DescribeSpotFleetRequestHistoryResponse"
    (Proxy :: Proxy DescribeSpotFleetRequestHistory)

deleteSpotDatafeedSubscriptionResponseTest :: DeleteSpotDatafeedSubscriptionResponse -> TestTree
deleteSpotDatafeedSubscriptionResponseTest = resp
    "DeleteSpotDatafeedSubscription"
    "fixture/EC2/DeleteSpotDatafeedSubscriptionResponse"
    (Proxy :: Proxy DeleteSpotDatafeedSubscription)

describePlacementGroupsResponseTest :: DescribePlacementGroupsResponse -> TestTree
describePlacementGroupsResponseTest = resp
    "DescribePlacementGroups"
    "fixture/EC2/DescribePlacementGroupsResponse"
    (Proxy :: Proxy DescribePlacementGroups)

createReservedInstancesListingResponseTest :: CreateReservedInstancesListingResponse -> TestTree
createReservedInstancesListingResponseTest = resp
    "CreateReservedInstancesListing"
    "fixture/EC2/CreateReservedInstancesListingResponse"
    (Proxy :: Proxy CreateReservedInstancesListing)

enableVPCClassicLinkResponseTest :: EnableVPCClassicLinkResponse -> TestTree
enableVPCClassicLinkResponseTest = resp
    "EnableVPCClassicLink"
    "fixture/EC2/EnableVPCClassicLinkResponse"
    (Proxy :: Proxy EnableVPCClassicLink)

describeKeyPairsResponseTest :: DescribeKeyPairsResponse -> TestTree
describeKeyPairsResponseTest = resp
    "DescribeKeyPairs"
    "fixture/EC2/DescribeKeyPairsResponse"
    (Proxy :: Proxy DescribeKeyPairs)

rebootInstancesResponseTest :: RebootInstancesResponse -> TestTree
rebootInstancesResponseTest = resp
    "RebootInstances"
    "fixture/EC2/RebootInstancesResponse"
    (Proxy :: Proxy RebootInstances)

attachVPNGatewayResponseTest :: AttachVPNGatewayResponse -> TestTree
attachVPNGatewayResponseTest = resp
    "AttachVPNGateway"
    "fixture/EC2/AttachVPNGatewayResponse"
    (Proxy :: Proxy AttachVPNGateway)

createVPNConnectionRouteResponseTest :: CreateVPNConnectionRouteResponse -> TestTree
createVPNConnectionRouteResponseTest = resp
    "CreateVPNConnectionRoute"
    "fixture/EC2/CreateVPNConnectionRouteResponse"
    (Proxy :: Proxy CreateVPNConnectionRoute)

describeClassicLinkInstancesResponseTest :: DescribeClassicLinkInstancesResponse -> TestTree
describeClassicLinkInstancesResponseTest = resp
    "DescribeClassicLinkInstances"
    "fixture/EC2/DescribeClassicLinkInstancesResponse"
    (Proxy :: Proxy DescribeClassicLinkInstances)

terminateInstancesResponseTest :: TerminateInstancesResponse -> TestTree
terminateInstancesResponseTest = resp
    "TerminateInstances"
    "fixture/EC2/TerminateInstancesResponse"
    (Proxy :: Proxy TerminateInstances)

createDHCPOptionsResponseTest :: CreateDHCPOptionsResponse -> TestTree
createDHCPOptionsResponseTest = resp
    "CreateDHCPOptions"
    "fixture/EC2/CreateDHCPOptionsResponse"
    (Proxy :: Proxy CreateDHCPOptions)

associateRouteTableResponseTest :: AssociateRouteTableResponse -> TestTree
associateRouteTableResponseTest = resp
    "AssociateRouteTable"
    "fixture/EC2/AssociateRouteTableResponse"
    (Proxy :: Proxy AssociateRouteTable)

createImageResponseTest :: CreateImageResponse -> TestTree
createImageResponseTest = resp
    "CreateImage"
    "fixture/EC2/CreateImageResponse"
    (Proxy :: Proxy CreateImage)

describeAccountAttributesResponseTest :: DescribeAccountAttributesResponse -> TestTree
describeAccountAttributesResponseTest = resp
    "DescribeAccountAttributes"
    "fixture/EC2/DescribeAccountAttributesResponse"
    (Proxy :: Proxy DescribeAccountAttributes)

resetImageAttributeResponseTest :: ResetImageAttributeResponse -> TestTree
resetImageAttributeResponseTest = resp
    "ResetImageAttribute"
    "fixture/EC2/ResetImageAttributeResponse"
    (Proxy :: Proxy ResetImageAttribute)

describeNetworkACLsResponseTest :: DescribeNetworkACLsResponse -> TestTree
describeNetworkACLsResponseTest = resp
    "DescribeNetworkACLs"
    "fixture/EC2/DescribeNetworkACLsResponse"
    (Proxy :: Proxy DescribeNetworkACLs)

cancelImportTaskResponseTest :: CancelImportTaskResponse -> TestTree
cancelImportTaskResponseTest = resp
    "CancelImportTask"
    "fixture/EC2/CancelImportTaskResponse"
    (Proxy :: Proxy CancelImportTask)

getConsoleOutputResponseTest :: GetConsoleOutputResponse -> TestTree
getConsoleOutputResponseTest = resp
    "GetConsoleOutput"
    "fixture/EC2/GetConsoleOutputResponse"
    (Proxy :: Proxy GetConsoleOutput)

unassignPrivateIPAddressesResponseTest :: UnassignPrivateIPAddressesResponse -> TestTree
unassignPrivateIPAddressesResponseTest = resp
    "UnassignPrivateIPAddresses"
    "fixture/EC2/UnassignPrivateIPAddressesResponse"
    (Proxy :: Proxy UnassignPrivateIPAddresses)

deleteRouteTableResponseTest :: DeleteRouteTableResponse -> TestTree
deleteRouteTableResponseTest = resp
    "DeleteRouteTable"
    "fixture/EC2/DeleteRouteTableResponse"
    (Proxy :: Proxy DeleteRouteTable)

describeImageAttributeResponseTest :: DescribeImageAttributeResponse -> TestTree
describeImageAttributeResponseTest = resp
    "DescribeImageAttribute"
    "fixture/EC2/DescribeImageAttributeResponse"
    (Proxy :: Proxy DescribeImageAttribute)

deleteDHCPOptionsResponseTest :: DeleteDHCPOptionsResponse -> TestTree
deleteDHCPOptionsResponseTest = resp
    "DeleteDHCPOptions"
    "fixture/EC2/DeleteDHCPOptionsResponse"
    (Proxy :: Proxy DeleteDHCPOptions)

describeVPNGatewaysResponseTest :: DescribeVPNGatewaysResponse -> TestTree
describeVPNGatewaysResponseTest = resp
    "DescribeVPNGateways"
    "fixture/EC2/DescribeVPNGatewaysResponse"
    (Proxy :: Proxy DescribeVPNGateways)

detachClassicLinkVPCResponseTest :: DetachClassicLinkVPCResponse -> TestTree
detachClassicLinkVPCResponseTest = resp
    "DetachClassicLinkVPC"
    "fixture/EC2/DetachClassicLinkVPCResponse"
    (Proxy :: Proxy DetachClassicLinkVPC)

describeReservedInstancesModificationsResponseTest :: DescribeReservedInstancesModificationsResponse -> TestTree
describeReservedInstancesModificationsResponseTest = resp
    "DescribeReservedInstancesModifications"
    "fixture/EC2/DescribeReservedInstancesModificationsResponse"
    (Proxy :: Proxy DescribeReservedInstancesModifications)

describeSpotInstanceRequestsResponseTest :: DescribeSpotInstanceRequestsResponse -> TestTree
describeSpotInstanceRequestsResponseTest = resp
    "DescribeSpotInstanceRequests"
    "fixture/EC2/DescribeSpotInstanceRequestsResponse"
    (Proxy :: Proxy DescribeSpotInstanceRequests)

monitorInstancesResponseTest :: MonitorInstancesResponse -> TestTree
monitorInstancesResponseTest = resp
    "MonitorInstances"
    "fixture/EC2/MonitorInstancesResponse"
    (Proxy :: Proxy MonitorInstances)

describeRegionsResponseTest :: DescribeRegionsResponse -> TestTree
describeRegionsResponseTest = resp
    "DescribeRegions"
    "fixture/EC2/DescribeRegionsResponse"
    (Proxy :: Proxy DescribeRegions)

modifyVPCAttributeResponseTest :: ModifyVPCAttributeResponse -> TestTree
modifyVPCAttributeResponseTest = resp
    "ModifyVPCAttribute"
    "fixture/EC2/ModifyVPCAttributeResponse"
    (Proxy :: Proxy ModifyVPCAttribute)

describeSpotFleetInstancesResponseTest :: DescribeSpotFleetInstancesResponse -> TestTree
describeSpotFleetInstancesResponseTest = resp
    "DescribeSpotFleetInstances"
    "fixture/EC2/DescribeSpotFleetInstancesResponse"
    (Proxy :: Proxy DescribeSpotFleetInstances)

describeVolumeStatusResponseTest :: DescribeVolumeStatusResponse -> TestTree
describeVolumeStatusResponseTest = resp
    "DescribeVolumeStatus"
    "fixture/EC2/DescribeVolumeStatusResponse"
    (Proxy :: Proxy DescribeVolumeStatus)

deleteVolumeResponseTest :: DeleteVolumeResponse -> TestTree
deleteVolumeResponseTest = resp
    "DeleteVolume"
    "fixture/EC2/DeleteVolumeResponse"
    (Proxy :: Proxy DeleteVolume)

describeImagesResponseTest :: DescribeImagesResponse -> TestTree
describeImagesResponseTest = resp
    "DescribeImages"
    "fixture/EC2/DescribeImagesResponse"
    (Proxy :: Proxy DescribeImages)

createKeyPairResponseTest :: CreateKeyPairResponse -> TestTree
createKeyPairResponseTest = resp
    "CreateKeyPair"
    "fixture/EC2/CreateKeyPairResponse"
    (Proxy :: Proxy CreateKeyPair)

restoreAddressToClassicResponseTest :: RestoreAddressToClassicResponse -> TestTree
restoreAddressToClassicResponseTest = resp
    "RestoreAddressToClassic"
    "fixture/EC2/RestoreAddressToClassicResponse"
    (Proxy :: Proxy RestoreAddressToClassic)

describeAvailabilityZonesResponseTest :: DescribeAvailabilityZonesResponse -> TestTree
describeAvailabilityZonesResponseTest = resp
    "DescribeAvailabilityZones"
    "fixture/EC2/DescribeAvailabilityZonesResponse"
    (Proxy :: Proxy DescribeAvailabilityZones)

importSnapshotResponseTest :: ImportSnapshotResponse -> TestTree
importSnapshotResponseTest = resp
    "ImportSnapshot"
    "fixture/EC2/ImportSnapshotResponse"
    (Proxy :: Proxy ImportSnapshot)

acceptVPCPeeringConnectionResponseTest :: AcceptVPCPeeringConnectionResponse -> TestTree
acceptVPCPeeringConnectionResponseTest = resp
    "AcceptVPCPeeringConnection"
    "fixture/EC2/AcceptVPCPeeringConnectionResponse"
    (Proxy :: Proxy AcceptVPCPeeringConnection)

describeRouteTablesResponseTest :: DescribeRouteTablesResponse -> TestTree
describeRouteTablesResponseTest = resp
    "DescribeRouteTables"
    "fixture/EC2/DescribeRouteTablesResponse"
    (Proxy :: Proxy DescribeRouteTables)
