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

/**
AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage Service (Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC), bypassing Internet service providers in your network path. An AWS Direct Connect location provides access to AWS in the region it is associated with, as well as access to other US regions. For example, you can provision a single connection to any AWS Direct Connect location in the US and use it to access public AWS services in all US Regions and AWS GovCloud (US).
*/
public struct Directconnect {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "OvertureService",
            service: "directconnect",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [DirectconnectError.self]
        )
    }

    ///  Deletes a BGP peer on the specified virtual interface that matches the specified customer address and ASN. You cannot delete the last BGP peer from a virtual interface.
    public func deleteBGPPeer(_ input: DeleteBGPPeerRequest) throws -> DeleteBGPPeerResponse {
        return try client.send(operation: "DeleteBGPPeer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before you make the request are also returned. If you specify a connection ID, only the virtual interfaces associated with the connection are returned. If you specify a virtual interface ID, then only a single virtual interface is returned. A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.
    public func describeVirtualInterfaces(_ input: DescribeVirtualInterfacesRequest) throws -> VirtualInterfaces {
        return try client.send(operation: "DescribeVirtualInterfaces", path: "/", httpMethod: "POST", input: input)
    }

    ///  Displays all connections in this region. If a connection ID is provided, the call returns only that particular connection.
    public func describeConnections(_ input: DescribeConnectionsRequest) throws -> Connections {
        return try client.send(operation: "DescribeConnections", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new BGP peer on a specified virtual interface. The BGP peer cannot be in the same address family (IPv4/IPv6) of an existing BGP peer on the virtual interface. You must create a BGP peer for the corresponding address family in order to access AWS resources that also use that address family. When creating a IPv6 BGP peer, the Amazon address and customer address fields must be left blank. IPv6 addresses are automatically assigned from Amazon's pool of IPv6 addresses; you cannot specify custom IPv6 addresses. For a public virtual interface, the Autonomous System Number (ASN) must be private or already whitelisted for the virtual interface.
    public func createBGPPeer(_ input: CreateBGPPeerRequest) throws -> CreateBGPPeerResponse {
        return try client.send(operation: "CreateBGPPeer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the tags associated with the specified Direct Connect resources.
    public func describeTags(_ input: DescribeTagsRequest) throws -> DescribeTagsResponse {
        return try client.send(operation: "DescribeTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new interconnect between a AWS Direct Connect partner's network and a specific AWS Direct Connect location. An interconnect is a connection which is capable of hosting other connections. The AWS Direct Connect partner can use an interconnect to provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do not have their own connections. Like a standard connection, an interconnect links the AWS Direct Connect partner's network to an AWS Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet fiber-optic cable. One end is connected to the partner's router, the other to an AWS Direct Connect router. You can automatically add the new interconnect to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new interconnect is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no interconnect will be created. For each end customer, the AWS Direct Connect partner provisions a connection on their interconnect by calling AllocateConnectionOnInterconnect. The end customer can then connect to AWS resources by creating a virtual interface on their connection, using the VLAN assigned to them by the AWS Direct Connect partner.  This is intended for use by AWS Direct Connect partners only. 
    public func createInterconnect(_ input: CreateInterconnectRequest) throws -> Interconnect {
        return try client.send(operation: "CreateInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes the link aggregation groups (LAGs) in your account.  If a LAG ID is provided, only information about the specified LAG is returned.
    public func describeLags(_ input: DescribeLagsRequest) throws -> Lags {
        return try client.send(operation: "DescribeLags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new public virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A public virtual interface supports sending traffic to public services of AWS such as Amazon Simple Storage Service (Amazon S3). When creating an IPv6 public virtual interface (addressFamily is 'ipv6'), the customer and amazon address fields should be left blank to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not supported.
    public func createPublicVirtualInterface(_ input: CreatePublicVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "CreatePublicVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new private virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A private virtual interface supports sending traffic to a single virtual private cloud (VPC).
    public func createPrivateVirtualInterface(_ input: CreatePrivateVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "CreatePrivateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Confirm the creation of a hosted connection on an interconnect. Upon creation, the hosted connection is initially in the 'Ordering' state, and will remain in this state until the owner calls ConfirmConnection to confirm creation of the hosted connection.
    public func confirmConnection(_ input: ConfirmConnectionRequest) throws -> ConfirmConnectionResponse {
        return try client.send(operation: "ConfirmConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a link aggregation group (LAG). You cannot delete a LAG if it has active virtual interfaces or hosted connections.
    public func deleteLag(_ input: DeleteLagRequest) throws -> Lag {
        return try client.send(operation: "DeleteLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a connection from a link aggregation group (LAG). The connection is interrupted and re-established as a standalone connection (the connection is not deleted; to delete the connection, use the DeleteConnection request). If the LAG has associated virtual interfaces or hosted connections, they remain associated with the LAG. A disassociated connection owned by an AWS Direct Connect partner is automatically converted to an interconnect. If disassociating the connection will cause the LAG to fall below its setting for minimum number of operational connections, the request fails, except when it's the last member of the LAG. If all connections are disassociated, the LAG continues to exist as an empty LAG with no physical connections. 
    public func disassociateConnectionFromLag(_ input: DisassociateConnectionFromLagRequest) throws -> Connection {
        return try client.send(operation: "DisassociateConnectionFromLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of hosted connections that have been provisioned on the given interconnect or link aggregation group (LAG).  This is intended for use by AWS Direct Connect partners only. 
    public func describeHostedConnections(_ input: DescribeHostedConnectionsRequest) throws -> Connections {
        return try client.send(operation: "DescribeHostedConnections", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the attributes of a link aggregation group (LAG).  You can update the following attributes:    The name of the LAG.   The value for the minimum number of connections that must be operational for the LAG itself to be operational.    When you create a LAG, the default value for the minimum number of operational connections is zero (0). If you update this value, and the number of operational connections falls below the specified value, the LAG will automatically go down to avoid overutilization of the remaining connections. Adjusting this value should be done with care as it could force the LAG down if the value is set higher than the current number of operational connections.
    public func updateLag(_ input: UpdateLagRequest) throws -> Lag {
        return try client.send(operation: "UpdateLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of interconnects owned by the AWS account. If an interconnect ID is provided, it will only return this particular interconnect.
    public func describeInterconnects(_ input: DescribeInterconnectsRequest) throws -> Interconnects {
        return try client.send(operation: "DescribeInterconnects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a virtual interface with a specified link aggregation group (LAG) or connection. Connectivity to AWS is temporarily interrupted as the virtual interface is being migrated. If the target connection or LAG has an associated virtual interface with a conflicting VLAN number or a conflicting IP address, the operation fails.  Virtual interfaces associated with a hosted connection cannot be associated with a LAG; hosted connections must be migrated along with their virtual interfaces using AssociateHostedConnection. Hosted virtual interfaces (an interface for which the owner of the connection is not the owner of physical connection) can only be reassociated by the owner of the physical connection.
    public func associateVirtualInterface(_ input: AssociateVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "AssociateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provisions a public virtual interface to be owned by a different customer. The owner of a connection calls this function to provision a public virtual interface which will be owned by another AWS customer. Virtual interfaces created using this function must be confirmed by the virtual interface owner by calling ConfirmPublicVirtualInterface. Until this step has been completed, the virtual interface will be in 'Confirming' state, and will not be available for handling traffic. When creating an IPv6 public virtual interface (addressFamily is 'ipv6'), the customer and amazon address fields should be left blank to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not supported.
    public func allocatePublicVirtualInterface(_ input: AllocatePublicVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "AllocatePublicVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated in favor of DescribeLoa. Returns the LOA-CFA for a Connection. The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or service provider uses when establishing your cross connect to AWS at the colocation facility. For more information, see Requesting Cross Connects at AWS Direct Connect Locations in the AWS Direct Connect user guide.
    public func describeConnectionLoa(_ input: DescribeConnectionLoaRequest) throws -> DescribeConnectionLoaResponse {
        return try client.send(operation: "DescribeConnectionLoa", path: "/", httpMethod: "POST", input: input)
    }

    ///  Accept ownership of a public virtual interface created by another customer. After the virtual interface owner calls this function, the specified virtual interface will be created and made available for handling traffic.
    public func confirmPublicVirtualInterface(_ input: ConfirmPublicVirtualInterfaceRequest) throws -> ConfirmPublicVirtualInterfaceResponse {
        return try client.send(operation: "ConfirmPublicVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated in favor of AllocateHostedConnection. Creates a hosted connection on an interconnect. Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the given interconnect.  This is intended for use by AWS Direct Connect partners only. 
    public func allocateConnectionOnInterconnect(_ input: AllocateConnectionOnInterconnectRequest) throws -> Connection {
        return try client.send(operation: "AllocateConnectionOnInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated in favor of DescribeLoa. Returns the LOA-CFA for an Interconnect. The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see Requesting Cross Connects at AWS Direct Connect Locations in the AWS Direct Connect user guide.
    public func describeInterconnectLoa(_ input: DescribeInterconnectLoaRequest) throws -> DescribeInterconnectLoaResponse {
        return try client.send(operation: "DescribeInterconnectLoa", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of AWS Direct Connect locations in the current AWS region. These are the locations that may be selected when calling CreateConnection or CreateInterconnect.
    public func describeLocations() throws -> Locations {
        return try client.send(operation: "DescribeLocations", path: "/", httpMethod: "POST")
    }

    ///  Deletes the connection. Deleting a connection only stops the AWS Direct Connect port hour and data transfer charges. You need to cancel separately with the providers any services or charges for cross-connects or network circuits that connect you to the AWS Direct Connect location.
    public func deleteConnection(_ input: DeleteConnectionRequest) throws -> Connection {
        return try client.send(operation: "DeleteConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deprecated in favor of DescribeHostedConnections. Returns a list of connections that have been provisioned on the given interconnect.  This is intended for use by AWS Direct Connect partners only. 
    public func describeConnectionsOnInterconnect(_ input: DescribeConnectionsOnInterconnectRequest) throws -> Connections {
        return try client.send(operation: "DescribeConnectionsOnInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a hosted connection on an interconnect or a link aggregation group (LAG). Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the given interconnect or LAG.  This is intended for use by AWS Direct Connect partners only. 
    public func allocateHostedConnection(_ input: AllocateHostedConnectionRequest) throws -> Connection {
        return try client.send(operation: "AllocateHostedConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of virtual private gateways owned by the AWS account. You can create one or more AWS Direct Connect private virtual interfaces linking to a virtual private gateway. A virtual private gateway can be managed via Amazon Virtual Private Cloud (VPC) console or the EC2 CreateVpnGateway action.
    public func describeVirtualGateways() throws -> VirtualGateways {
        return try client.send(operation: "DescribeVirtualGateways", path: "/", httpMethod: "POST")
    }

    ///  Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted connection with a conflicting VLAN number or IP address, the operation fails. This action temporarily interrupts the hosted connection's connectivity to AWS as it is being migrated.  This is intended for use by AWS Direct Connect partners only. 
    public func associateHostedConnection(_ input: AssociateHostedConnectionRequest) throws -> Connection {
        return try client.send(operation: "AssociateHostedConnection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new link aggregation group (LAG) with the specified number of bundled physical connections between the customer network and a specific AWS Direct Connect location. A LAG is a logical interface that uses the Link Aggregation Control Protocol (LACP) to aggregate multiple 1 gigabit or 10 gigabit interfaces, allowing you to treat them as a single interface. All connections in a LAG must use the same bandwidth (for example, 10 Gbps), and must terminate at the same AWS Direct Connect endpoint. You can have up to 10 connections per LAG. Regardless of this limit, if you request more connections for the LAG than AWS Direct Connect can allocate on a single endpoint, no LAG is created. You can specify an existing physical connection or interconnect to include in the LAG (which counts towards the total number of connections). Doing so interrupts the current physical connection or hosted connections, and re-establishes them as a member of the LAG. The LAG will be created on the same AWS Direct Connect endpoint to which the connection terminates. Any virtual interfaces associated with the connection are automatically disassociated and re-associated with the LAG. The connection ID does not change. If the AWS account used to create a LAG is a registered AWS Direct Connect partner, the LAG is automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual interfaces cannot be directly configured.
    public func createLag(_ input: CreateLagRequest) throws -> Lag {
        return try client.send(operation: "CreateLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the LOA-CFA for a connection, interconnect, or link aggregation group (LAG). The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see Requesting Cross Connects at AWS Direct Connect Locations in the AWS Direct Connect user guide.
    public func describeLoa(_ input: DescribeLoaRequest) throws -> Loa {
        return try client.send(operation: "DescribeLoa", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags from the specified Direct Connect resource.
    public func untagResource(_ input: UntagResourceRequest) throws -> UntagResourceResponse {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provisions a private virtual interface to be owned by another AWS customer. Virtual interfaces created using this action must be confirmed by the virtual interface owner by using the ConfirmPrivateVirtualInterface action. Until then, the virtual interface will be in 'Confirming' state, and will not be available for handling traffic.
    public func allocatePrivateVirtualInterface(_ input: AllocatePrivateVirtualInterfaceRequest) throws -> VirtualInterface {
        return try client.send(operation: "AllocatePrivateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a virtual interface.
    public func deleteVirtualInterface(_ input: DeleteVirtualInterfaceRequest) throws -> DeleteVirtualInterfaceResponse {
        return try client.send(operation: "DeleteVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds the specified tags to the specified Direct Connect resource. Each Direct Connect resource can have a maximum of 50 tags. Each tag consists of a key and an optional value. If a tag with the same key is already associated with the Direct Connect resource, this action updates its value.
    public func tagResource(_ input: TagResourceRequest) throws -> TagResourceResponse {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified interconnect.  This is intended for use by AWS Direct Connect partners only. 
    public func deleteInterconnect(_ input: DeleteInterconnectRequest) throws -> DeleteInterconnectResponse {
        return try client.send(operation: "DeleteInterconnect", path: "/", httpMethod: "POST", input: input)
    }

    ///  Accept ownership of a private virtual interface created by another customer. After the virtual interface owner calls this function, the virtual interface will be created and attached to the given virtual private gateway, and will be available for handling traffic.
    public func confirmPrivateVirtualInterface(_ input: ConfirmPrivateVirtualInterfaceRequest) throws -> ConfirmPrivateVirtualInterfaceResponse {
        return try client.send(operation: "ConfirmPrivateVirtualInterface", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates an existing connection with a link aggregation group (LAG). The connection is interrupted and re-established as a member of the LAG (connectivity to AWS will be interrupted). The connection must be hosted on the same AWS Direct Connect endpoint as the LAG, and its bandwidth must match the bandwidth for the LAG. You can reassociate a connection that's currently associated with a different LAG; however, if removing the connection will cause the original LAG to fall below its setting for minimum number of operational connections, the request fails. Virtual interfaces that are directly associated with the connection are not automatically migrated. You can delete them or associate them with the target LAG using AssociateVirtualInterface. If the connection was originally associated with a different LAG, the virtual interfaces remain associated with the original LAG. For interconnects, hosted connections are not automatically migrated. You can delete them, or the owner of the physical connection can associate them with the target LAG using AssociateHostedConnection. After all hosted connections have been migrated, the interconnect can be migrated into the LAG. If the interconnect is already associated with a LAG, the hosted connections remain associated with the original LAG.
    public func associateConnectionWithLag(_ input: AssociateConnectionWithLagRequest) throws -> Connection {
        return try client.send(operation: "AssociateConnectionWithLag", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new connection between the customer network and a specific AWS Direct Connect location. A connection links your internal network to an AWS Direct Connect location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. An AWS Direct Connect location provides access to Amazon Web Services in the region it is associated with. You can establish connections with AWS Direct Connect locations in multiple regions, but a connection in one region does not provide connectivity to other regions. You can automatically add the new connection to a link aggregation group (LAG) by specifying a LAG ID in the request. This ensures that the new connection is allocated on the same AWS Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint, the request fails and no connection will be created.
    public func createConnection(_ input: CreateConnectionRequest) throws -> Connection {
        return try client.send(operation: "CreateConnection", path: "/", httpMethod: "POST", input: input)
    }


}