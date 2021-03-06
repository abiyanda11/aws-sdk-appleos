// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find
 and deploy serverless applications in the AWS Cloud. For more information about serverless applications,
 see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of 
 all levels can get started with serverless computing without needing to learn anything new. You can use category 
 keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. 
 You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, 
 configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately
 within your team or across your organization. To publish a serverless application (or app), you can use the
 AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the
 code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.
 For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs
 GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer
 experiences available:
 
 Consuming Applications – Browse for applications and view information about them, including
 source code and readme files. Also install, configure, and deploy applications of your choosing. 
 Publishing Applications – Configure and upload applications to make them available to other
 developers, and publish new versions of applications. 
 
 
*/
public struct ServerlessApplicationRepository {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "serverlessrepo",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-09-08",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ServerlessApplicationRepositoryErrorType.self]
        )
    }

    ///  Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    public func createApplication(_ input: CreateApplicationRequest) -> Future<CreateApplicationResponse> {
        return client.send(operation: "CreateApplication", path: "/applications", httpMethod: "POST", input: input)
    }

    ///  Creates an application version.
    public func createApplicationVersion(_ input: CreateApplicationVersionRequest) -> Future<CreateApplicationVersionResponse> {
        return client.send(operation: "CreateApplicationVersion", path: "/applications/{applicationId}/versions/{semanticVersion}", httpMethod: "PUT", input: input)
    }

    ///  Creates an AWS CloudFormation change set for the given application.
    public func createCloudFormationChangeSet(_ input: CreateCloudFormationChangeSetRequest) -> Future<CreateCloudFormationChangeSetResponse> {
        return client.send(operation: "CreateCloudFormationChangeSet", path: "/applications/{applicationId}/changesets", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS CloudFormation template.
    public func createCloudFormationTemplate(_ input: CreateCloudFormationTemplateRequest) -> Future<CreateCloudFormationTemplateResponse> {
        return client.send(operation: "CreateCloudFormationTemplate", path: "/applications/{applicationId}/templates", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified application.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest) -> Future<Void> {
        return client.send(operation: "DeleteApplication", path: "/applications/{applicationId}", httpMethod: "DELETE", input: input)
    }

    ///  Gets the specified application.
    public func getApplication(_ input: GetApplicationRequest) -> Future<GetApplicationResponse> {
        return client.send(operation: "GetApplication", path: "/applications/{applicationId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the policy for the application.
    public func getApplicationPolicy(_ input: GetApplicationPolicyRequest) -> Future<GetApplicationPolicyResponse> {
        return client.send(operation: "GetApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: "GET", input: input)
    }

    ///  Gets the specified AWS CloudFormation template.
    public func getCloudFormationTemplate(_ input: GetCloudFormationTemplateRequest) -> Future<GetCloudFormationTemplateResponse> {
        return client.send(operation: "GetCloudFormationTemplate", path: "/applications/{applicationId}/templates/{templateId}", httpMethod: "GET", input: input)
    }

    ///  Retrieves the list of applications nested in the containing application.
    public func listApplicationDependencies(_ input: ListApplicationDependenciesRequest) -> Future<ListApplicationDependenciesResponse> {
        return client.send(operation: "ListApplicationDependencies", path: "/applications/{applicationId}/dependencies", httpMethod: "GET", input: input)
    }

    ///  Lists versions for the specified application.
    public func listApplicationVersions(_ input: ListApplicationVersionsRequest) -> Future<ListApplicationVersionsResponse> {
        return client.send(operation: "ListApplicationVersions", path: "/applications/{applicationId}/versions", httpMethod: "GET", input: input)
    }

    ///  Lists applications owned by the requester.
    public func listApplications(_ input: ListApplicationsRequest) -> Future<ListApplicationsResponse> {
        return client.send(operation: "ListApplications", path: "/applications", httpMethod: "GET", input: input)
    }

    ///  Sets the permission policy for an application. For the list of actions supported for this operation, see
    ///   Application 
    ///   Permissions
    ///   .
    public func putApplicationPolicy(_ input: PutApplicationPolicyRequest) -> Future<PutApplicationPolicyResponse> {
        return client.send(operation: "PutApplicationPolicy", path: "/applications/{applicationId}/policy", httpMethod: "PUT", input: input)
    }

    ///  Updates the specified application.
    public func updateApplication(_ input: UpdateApplicationRequest) -> Future<UpdateApplicationResponse> {
        return client.send(operation: "UpdateApplication", path: "/applications/{applicationId}", httpMethod: "PATCH", input: input)
    }
}
