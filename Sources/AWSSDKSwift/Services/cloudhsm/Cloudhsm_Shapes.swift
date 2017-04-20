// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Cloudhsm {

    public struct ModifyHapgResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the high-availability partition group.
        public var hapgArn: String? = nil

        public init() {}

        public init(hapgArn: String? = nil) {
            self.hapgArn = hapgArn
        }

    }

    public struct DeleteHsmResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the operation.
        public var status: String = ""

        public init() {}

        public init(status: String) {
            self.status = status
        }

    }

    public struct DescribeHsmRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The serial number of the HSM. Either the HsmArn or the HsmSerialNumber parameter must be specified.
        public var hsmSerialNumber: String? = nil
        /// The ARN of the HSM. Either the HsmArn or the SerialNumber parameter must be specified.
        public var hsmArn: String? = nil

        public init() {}

        public init(hsmSerialNumber: String? = nil, hsmArn: String? = nil) {
            self.hsmSerialNumber = hsmSerialNumber
            self.hsmArn = hsmArn
        }

    }

    public struct ListTagsForResourceRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
        public var resourceArn: String = ""

        public init() {}

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

    }

    public struct ListTagsForResourceResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// One or more tags.
        public var tagList: [Tag] = []

        public init() {}

        public init(tagList: [Tag]) {
            self.tagList = tagList
        }

    }

    public struct CreateHapgRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The label of the new high-availability partition group.
        public var label: String = ""

        public init() {}

        public init(label: String) {
            self.label = label
        }

    }

    public struct GetConfigRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the client.
        public var clientArn: String = ""
        /// A list of ARNs that identify the high-availability partition groups that are associated with the client.
        public var hapgList: [String] = []
        /// The client version.
        public var clientVersion: String = ""

        public init() {}

        public init(clientArn: String, hapgList: [String], clientVersion: String) {
            self.clientArn = clientArn
            self.hapgList = hapgList
            self.clientVersion = clientVersion
        }

    }

    public struct ModifyHapgRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The new label for the high-availability partition group.
        public var label: String? = nil
        /// The ARN of the high-availability partition group to modify.
        public var hapgArn: String = ""
        /// The list of partition serial numbers to make members of the high-availability partition group.
        public var partitionSerialList: [String]? = nil

        public init() {}

        public init(label: String? = nil, hapgArn: String, partitionSerialList: [String]? = nil) {
            self.label = label
            self.hapgArn = hapgArn
            self.partitionSerialList = partitionSerialList
        }

    }

    public struct ListLunaClientsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The NextToken value from a previous call to ListLunaClients. Pass null if this is the first call.
        public var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

    public struct CreateLunaClientRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The contents of a Base64-Encoded X.509 v3 certificate to be installed on the HSMs used by this client.
        public var certificate: String = ""
        /// The label for the client.
        public var label: String? = nil

        public init() {}

        public init(certificate: String, label: String? = nil) {
            self.certificate = certificate
            self.label = label
        }

    }

    public struct ModifyLunaClientRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The new certificate for the client.
        public var certificate: String = ""
        /// The ARN of the client.
        public var clientArn: String = ""

        public init() {}

        public init(certificate: String, clientArn: String) {
            self.certificate = certificate
            self.clientArn = clientArn
        }

    }

    public struct DescribeLunaClientRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the client.
        public var clientArn: String? = nil
        /// The certificate fingerprint.
        public var certificateFingerprint: String? = nil

        public init() {}

        public init(clientArn: String? = nil, certificateFingerprint: String? = nil) {
            self.clientArn = clientArn
            self.certificateFingerprint = certificateFingerprint
        }

    }

    public struct GetConfigResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The type of credentials.
        public var configType: String? = nil
        /// The chrystoki.conf configuration file.
        public var configFile: String? = nil
        /// The certificate file containing the server.pem files of the HSMs.
        public var configCred: String? = nil

        public init() {}

        public init(configType: String? = nil, configFile: String? = nil, configCred: String? = nil) {
            self.configType = configType
            self.configFile = configFile
            self.configCred = configCred
        }

    }

    public struct DeleteHsmRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the HSM to delete.
        public var hsmArn: String = ""

        public init() {}

        public init(hsmArn: String) {
            self.hsmArn = hsmArn
        }

    }

    public struct ListHsmsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The NextToken value from a previous call to ListHsms. Pass null if this is the first call.
        public var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

    public struct ModifyHsmRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The new external ID.
        public var externalId: String? = nil
        /// The new identifier of the subnet that the HSM is in. The new subnet must be in the same Availability Zone as the current subnet.
        public var subnetId: String? = nil
        /// The new IP address for the elastic network interface (ENI) attached to the HSM. If the HSM is moved to a different subnet, and an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the new subnet.
        public var eniIp: String? = nil
        /// The new IAM role ARN.
        public var iamRoleArn: String? = nil
        /// The new IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
        public var syslogIp: String? = nil
        /// The ARN of the HSM to modify.
        public var hsmArn: String = ""

        public init() {}

        public init(externalId: String? = nil, subnetId: String? = nil, eniIp: String? = nil, iamRoleArn: String? = nil, syslogIp: String? = nil, hsmArn: String) {
            self.externalId = externalId
            self.subnetId = subnetId
            self.eniIp = eniIp
            self.iamRoleArn = iamRoleArn
            self.syslogIp = syslogIp
            self.hsmArn = hsmArn
        }

    }

    public struct DescribeHapgResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        public var hsmsPendingDeletion: [String]? = nil
        /// The state of the high-availability partition group.
        public var state: String? = nil
        /// The ARN of the high-availability partition group.
        public var hapgArn: String? = nil
        /// The serial number of the high-availability partition group.
        public var hapgSerial: String? = nil
        public var hsmsLastActionFailed: [String]? = nil
        /// The list of partition serial numbers that belong to the high-availability partition group.
        public var partitionSerialList: [String]? = nil
        public var hsmsPendingRegistration: [String]? = nil
        /// The date and time the high-availability partition group was last modified.
        public var lastModifiedTimestamp: String? = nil
        /// The label for the high-availability partition group.
        public var label: String? = nil

        public init() {}

        public init(hsmsPendingDeletion: [String]? = nil, state: String? = nil, hapgArn: String? = nil, hapgSerial: String? = nil, hsmsLastActionFailed: [String]? = nil, partitionSerialList: [String]? = nil, hsmsPendingRegistration: [String]? = nil, lastModifiedTimestamp: String? = nil, label: String? = nil) {
            self.hsmsPendingDeletion = hsmsPendingDeletion
            self.state = state
            self.hapgArn = hapgArn
            self.hapgSerial = hapgSerial
            self.hsmsLastActionFailed = hsmsLastActionFailed
            self.partitionSerialList = partitionSerialList
            self.hsmsPendingRegistration = hsmsPendingRegistration
            self.lastModifiedTimestamp = lastModifiedTimestamp
            self.label = label
        }

    }

    public struct DescribeLunaClientResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The certificate installed on the HSMs used by this client.
        public var certificate: String? = nil
        /// The date and time the client was last modified.
        public var lastModifiedTimestamp: String? = nil
        /// The ARN of the client.
        public var clientArn: String? = nil
        /// The certificate fingerprint.
        public var certificateFingerprint: String? = nil
        /// The label of the client.
        public var label: String? = nil

        public init() {}

        public init(certificate: String? = nil, lastModifiedTimestamp: String? = nil, clientArn: String? = nil, certificateFingerprint: String? = nil, label: String? = nil) {
            self.certificate = certificate
            self.lastModifiedTimestamp = lastModifiedTimestamp
            self.clientArn = clientArn
            self.certificateFingerprint = certificateFingerprint
            self.label = label
        }

    }

    public struct RemoveTagsFromResourceResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the operation.
        public var status: String = ""

        public init() {}

        public init(status: String) {
            self.status = status
        }

    }

    public struct Tag: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The value of the tag.
        public var value: String = ""
        /// The key of the tag.
        public var key: String = ""

        public init() {}

        public init(value: String, key: String) {
            self.value = value
            self.key = key
        }

    }

    public struct AddTagsToResourceResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the operation.
        public var status: String = ""

        public init() {}

        public init(status: String) {
            self.status = status
        }

    }

    public struct DeleteHapgRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the high-availability partition group to delete.
        public var hapgArn: String = ""

        public init() {}

        public init(hapgArn: String) {
            self.hapgArn = hapgArn
        }

    }

    public struct DescribeHsmResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// Contains additional information about the status of the HSM.
        public var statusDetails: String? = nil
        /// The identifier of the subnet that the HSM is in.
        public var subnetId: String? = nil
        /// The IP address assigned to the HSM's ENI.
        public var eniIp: String? = nil
        /// The identifier of the elastic network interface (ENI) attached to the HSM.
        public var eniId: String? = nil
        /// The ARN of the HSM.
        public var hsmArn: String? = nil
        /// The public SSH key.
        public var sshPublicKey: String? = nil
        /// The subscription end date.
        public var subscriptionEndDate: String? = nil
        /// The date and time that the SSH key was last updated.
        public var sshKeyLastUpdated: String? = nil
        /// The serial number of the HSM.
        public var serialNumber: String? = nil
        /// The Availability Zone that the HSM is in.
        public var availabilityZone: String? = nil
        /// The status of the HSM.
        public var status: String? = nil
        /// The ARN of the IAM role assigned to the HSM.
        public var iamRoleArn: String? = nil
        /// The date and time that the server certificate was last updated.
        public var serverCertLastUpdated: String? = nil
        /// The identifier of the VPC that the HSM is in.
        public var vpcId: String? = nil
        public var subscriptionType: String? = nil
        /// The URI of the certificate server.
        public var serverCertUri: String? = nil
        /// The list of partitions on the HSM.
        public var partitions: [String]? = nil
        /// The HSM software version.
        public var softwareVersion: String? = nil
        /// The HSM model type.
        public var hsmType: String? = nil
        /// The subscription start date.
        public var subscriptionStartDate: String? = nil
        /// The name of the HSM vendor.
        public var vendorName: String? = nil

        public init() {}

        public init(statusDetails: String? = nil, subnetId: String? = nil, eniIp: String? = nil, eniId: String? = nil, hsmArn: String? = nil, sshPublicKey: String? = nil, subscriptionEndDate: String? = nil, sshKeyLastUpdated: String? = nil, serialNumber: String? = nil, availabilityZone: String? = nil, status: String? = nil, iamRoleArn: String? = nil, serverCertLastUpdated: String? = nil, vpcId: String? = nil, subscriptionType: String? = nil, serverCertUri: String? = nil, partitions: [String]? = nil, softwareVersion: String? = nil, hsmType: String? = nil, subscriptionStartDate: String? = nil, vendorName: String? = nil) {
            self.statusDetails = statusDetails
            self.subnetId = subnetId
            self.eniIp = eniIp
            self.eniId = eniId
            self.hsmArn = hsmArn
            self.sshPublicKey = sshPublicKey
            self.subscriptionEndDate = subscriptionEndDate
            self.sshKeyLastUpdated = sshKeyLastUpdated
            self.serialNumber = serialNumber
            self.availabilityZone = availabilityZone
            self.status = status
            self.iamRoleArn = iamRoleArn
            self.serverCertLastUpdated = serverCertLastUpdated
            self.vpcId = vpcId
            self.subscriptionType = subscriptionType
            self.serverCertUri = serverCertUri
            self.partitions = partitions
            self.softwareVersion = softwareVersion
            self.hsmType = hsmType
            self.subscriptionStartDate = subscriptionStartDate
            self.vendorName = vendorName
        }

    }

    public struct ListLunaClientsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// If not null, more results are available. Pass this to ListLunaClients to retrieve the next set of items.
        public var nextToken: String? = nil
        /// The list of clients.
        public var clientList: [String] = []

        public init() {}

        public init(nextToken: String? = nil, clientList: [String]) {
            self.nextToken = nextToken
            self.clientList = clientList
        }

    }

    public struct DeleteLunaClientResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the action.
        public var status: String = ""

        public init() {}

        public init(status: String) {
            self.status = status
        }

    }

    public struct ListAvailableZonesResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The list of Availability Zones that have available AWS CloudHSM capacity.
        public var aZList: [String]? = nil

        public init() {}

        public init(aZList: [String]? = nil) {
            self.aZList = aZList
        }

    }

    public struct AddTagsToResourceRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.
        public var resourceArn: String = ""
        /// One or more tags.
        public var tagList: [Tag] = []

        public init() {}

        public init(resourceArn: String, tagList: [Tag]) {
            self.resourceArn = resourceArn
            self.tagList = tagList
        }

    }

    public struct CreateLunaClientResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the client.
        public var clientArn: String? = nil

        public init() {}

        public init(clientArn: String? = nil) {
            self.clientArn = clientArn
        }

    }

    public struct CreateHapgResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the high-availability partition group.
        public var hapgArn: String? = nil

        public init() {}

        public init(hapgArn: String? = nil) {
            self.hapgArn = hapgArn
        }

    }

    public struct CreateHsmResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the HSM.
        public var hsmArn: String? = nil

        public init() {}

        public init(hsmArn: String? = nil) {
            self.hsmArn = hsmArn
        }

    }

    public struct ListHapgsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// If not null, more results are available. Pass this value to ListHapgs to retrieve the next set of items.
        public var nextToken: String? = nil
        /// The list of high-availability partition groups.
        public var hapgList: [String] = []

        public init() {}

        public init(nextToken: String? = nil, hapgList: [String]) {
            self.nextToken = nextToken
            self.hapgList = hapgList
        }

    }

    public struct CreateHsmRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The identifier of the subnet in your VPC in which to place the HSM.
        public var subnetId: String = ""
        /// A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
        public var clientToken: String? = nil
        /// The IP address to assign to the HSM's ENI. If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
        public var eniIp: String? = nil
        /// The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
        public var iamRoleArn: String = ""
        /// The SSH public key to install on the HSM.
        public var sshKey: String = ""
        public var subscriptionType: String = ""
        /// The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
        public var syslogIp: String? = nil
        /// The external ID from IamRoleArn, if present.
        public var externalId: String? = nil

        public init() {}

        public init(subnetId: String, clientToken: String? = nil, eniIp: String? = nil, iamRoleArn: String, sshKey: String, subscriptionType: String, syslogIp: String? = nil, externalId: String? = nil) {
            self.subnetId = subnetId
            self.clientToken = clientToken
            self.eniIp = eniIp
            self.iamRoleArn = iamRoleArn
            self.sshKey = sshKey
            self.subscriptionType = subscriptionType
            self.syslogIp = syslogIp
            self.externalId = externalId
        }

    }

    public struct RemoveTagsFromResourceRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The tag key or keys to remove. Specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use AddTagsToResource.
        public var tagKeyList: [String] = []
        /// The Amazon Resource Name (ARN) of the AWS CloudHSM resource.
        public var resourceArn: String = ""

        public init() {}

        public init(tagKeyList: [String], resourceArn: String) {
            self.tagKeyList = tagKeyList
            self.resourceArn = resourceArn
        }

    }

    public struct ListAvailableZonesRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil

        public init() {}

    }

    public struct DeleteHapgResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The status of the action.
        public var status: String = ""

        public init() {}

        public init(status: String) {
            self.status = status
        }

    }

    public struct DeleteLunaClientRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the client to delete.
        public var clientArn: String = ""

        public init() {}

        public init(clientArn: String) {
            self.clientArn = clientArn
        }

    }

    public struct ListHsmsResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The list of ARNs that identify the HSMs.
        public var hsmList: [String]? = nil
        /// If not null, more results are available. Pass this value to ListHsms to retrieve the next set of items.
        public var nextToken: String? = nil

        public init() {}

        public init(hsmList: [String]? = nil, nextToken: String? = nil) {
            self.hsmList = hsmList
            self.nextToken = nextToken
        }

    }

    public struct DescribeHapgRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the high-availability partition group to describe.
        public var hapgArn: String = ""

        public init() {}

        public init(hapgArn: String) {
            self.hapgArn = hapgArn
        }

    }

    public struct ModifyLunaClientResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the client.
        public var clientArn: String? = nil

        public init() {}

        public init(clientArn: String? = nil) {
            self.clientArn = clientArn
        }

    }

    public struct ModifyHsmResponse: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The ARN of the HSM.
        public var hsmArn: String? = nil

        public init() {}

        public init(hsmArn: String? = nil) {
            self.hsmArn = hsmArn
        }

    }

    public struct ListHapgsRequest: AWSShape {
        /// The key for the payload
        public let _payload: String? = nil
        /// The NextToken value from a previous call to ListHapgs. Pass null if this is the first call.
        public var nextToken: String? = nil

        public init() {}

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

    }

}