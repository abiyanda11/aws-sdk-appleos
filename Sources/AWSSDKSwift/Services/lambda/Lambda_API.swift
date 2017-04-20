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
AWS Lambda  Overview  This is the AWS Lambda API Reference. The AWS Lambda Developer Guide provides additional information. For the service overview, see What is AWS Lambda, and for information about how the service works, see AWS Lambda: How it Works in the AWS Lambda Developer Guide.
*/
public struct Lambda {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "lambda",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [LambdaError.self]
        )
    }

    ///  Adds a permission to the resource policy associated with the specified AWS Lambda function. You use resource policies to grant permissions to event sources that use push model. In a push model, event sources (such as Amazon S3 and custom applications) invoke your Lambda function. Each permission you add to the resource policy allows an event source, permission to invoke the Lambda function.  For information about the push model, see AWS Lambda: How it Works.  If you are using versioning, the permissions you add are specific to the Lambda function version or alias you specify in the AddPermission request via the Qualifier parameter. For more information about versioning, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:AddPermission action.
    public func addPermission(_ input: AddPermissionRequest) throws -> AddPermissionResponse {
        return try client.send(operation: "AddPermission", path: "/2015-03-31/functions/{FunctionName}/policy", httpMethod: "POST", input: input)
    }

    ///  Returns configuration information for the specified event source mapping (see CreateEventSourceMapping). This operation requires permission for the lambda:GetEventSourceMapping action.
    public func getEventSourceMapping(_ input: GetEventSourceMappingRequest) throws -> EventSourceMappingConfiguration {
        return try client.send(operation: "GetEventSourceMapping", path: "/2015-03-31/event-source-mappings/{UUID}", httpMethod: "GET", input: input)
    }

    ///  Updates the configuration parameters for the specified Lambda function by using the values provided in the request. You provide only the parameters you want to change. This operation must only be used on an existing Lambda function and cannot be used to update the function's code. If you are using the versioning feature, note this API will always update the $LATEST version of your Lambda function. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:UpdateFunctionConfiguration action.
    public func updateFunctionConfiguration(_ input: UpdateFunctionConfigurationRequest) throws -> FunctionConfiguration {
        return try client.send(operation: "UpdateFunctionConfiguration", path: "/2015-03-31/functions/{FunctionName}/configuration", httpMethod: "PUT", input: input)
    }

    ///  Deletes the specified Lambda function code and configuration. If you are using the versioning feature and you don't specify a function version in your DeleteFunction request, AWS Lambda will delete the function, including all its versions, and any aliases pointing to the function versions. To delete a specific function version, you must provide the function version via the Qualifier parameter. For information about function versioning, see AWS Lambda Function Versioning and Aliases.  When you delete a function the associated resource policy is also deleted. You will need to delete the event source mappings explicitly. This operation requires permission for the lambda:DeleteFunction action.
    public func deleteFunction(_ input: DeleteFunctionRequest) throws {
        _ = try client.send(operation: "DeleteFunction", path: "/2015-03-31/functions/{FunctionName}", httpMethod: "DELETE", input: input)
    }

    ///  Removes an event source mapping. This means AWS Lambda will no longer invoke the function for events in the associated source. This operation requires permission for the lambda:DeleteEventSourceMapping action.
    public func deleteEventSourceMapping(_ input: DeleteEventSourceMappingRequest) throws -> EventSourceMappingConfiguration {
        return try client.send(operation: "DeleteEventSourceMapping", path: "/2015-03-31/event-source-mappings/{UUID}", httpMethod: "DELETE", input: input)
    }

    ///  Returns the configuration information of the Lambda function and a presigned URL link to the .zip file you uploaded with CreateFunction so you can download the .zip file. Note that the URL is valid for up to 10 minutes. The configuration information is the same information you provided as parameters when uploading the function. Using the optional Qualifier parameter, you can specify a specific function version for which you want this information. If you don't specify this parameter, the API uses unqualified function ARN which return information about the $LATEST version of the Lambda function. For more information, see AWS Lambda Function Versioning and Aliases. This operation requires permission for the lambda:GetFunction action.
    public func getFunction(_ input: GetFunctionRequest) throws -> GetFunctionResponse {
        return try client.send(operation: "GetFunction", path: "/2015-03-31/functions/{FunctionName}", httpMethod: "GET", input: input)
    }

    ///  Deletes the specified Lambda function alias. For more information, see Introduction to AWS Lambda Aliases. This requires permission for the lambda:DeleteAlias action.
    public func deleteAlias(_ input: DeleteAliasRequest) throws {
        _ = try client.send(operation: "DeleteAlias", path: "/2015-03-31/functions/{FunctionName}/aliases/{Name}", httpMethod: "DELETE", input: input)
    }

    ///  This API is deprecated. We recommend you use Invoke API (see Invoke).  Submits an invocation request to AWS Lambda. Upon receiving the request, Lambda executes the specified function asynchronously. To see the logs generated by the Lambda function execution, see the CloudWatch Logs console. This operation requires permission for the lambda:InvokeFunction action.
    public func invokeAsync(_ input: InvokeAsyncRequest) throws -> InvokeAsyncResponse {
        return try client.send(operation: "InvokeAsync", path: "/2014-11-13/functions/{FunctionName}/invoke-async/", httpMethod: "POST", input: input)
    }

    ///  You can remove individual permissions from an resource policy associated with a Lambda function by providing a statement ID that you provided when you added the permission. If you are using versioning, the permissions you remove are specific to the Lambda function version or alias you specify in the AddPermission request via the Qualifier parameter. For more information about versioning, see AWS Lambda Function Versioning and Aliases.  Note that removal of a permission will cause an active event source to lose permission to the function. You need permission for the lambda:RemovePermission action.
    public func removePermission(_ input: RemovePermissionRequest) throws {
        _ = try client.send(operation: "RemovePermission", path: "/2015-03-31/functions/{FunctionName}/policy/{StatementId}", httpMethod: "DELETE", input: input)
    }

    ///  List all versions of a function. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases. 
    public func listVersionsByFunction(_ input: ListVersionsByFunctionRequest) throws -> ListVersionsByFunctionResponse {
        return try client.send(operation: "ListVersionsByFunction", path: "/2015-03-31/functions/{FunctionName}/versions", httpMethod: "GET", input: input)
    }

    ///  Returns a list of your Lambda functions. For each function, the response includes the function configuration information. You must use GetFunction to retrieve the code for your function. This operation requires permission for the lambda:ListFunctions action. If you are using versioning feature, the response returns list of $LATEST versions of your functions. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases. 
    public func listFunctions(_ input: ListFunctionsRequest) throws -> ListFunctionsResponse {
        return try client.send(operation: "ListFunctions", path: "/2015-03-31/functions/", httpMethod: "GET", input: input)
    }

    ///  Returns the specified alias information such as the alias ARN, description, and function version it is pointing to. For more information, see Introduction to AWS Lambda Aliases. This requires permission for the lambda:GetAlias action.
    public func getAlias(_ input: GetAliasRequest) throws -> AliasConfiguration {
        return try client.send(operation: "GetAlias", path: "/2015-03-31/functions/{FunctionName}/aliases/{Name}", httpMethod: "GET", input: input)
    }

    ///  Invokes a specific Lambda function. For an example, see Create the Lambda Function and Test It Manually.  If you are using the versioning feature, you can invoke the specific function version by providing function version or alias name that is pointing to the function version using the Qualifier parameter in the request. If you don't provide the Qualifier parameter, the $LATEST version of the Lambda function is invoked. Invocations occur at least once in response to an event and functions must be idempotent to handle this. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:InvokeFunction action.
    public func invoke(_ input: InvocationRequest) throws -> InvocationResponse {
        return try client.send(operation: "Invoke", path: "/2015-03-31/functions/{FunctionName}/invocations", httpMethod: "POST", input: input)
    }

    ///  Returns the configuration information of the Lambda function. This the same information you provided as parameters when uploading the function by using CreateFunction. If you are using the versioning feature, you can retrieve this information for a specific function version by using the optional Qualifier parameter and specifying the function version or alias that points to it. If you don't provide it, the API returns information about the $LATEST version of the function. For more information about versioning, see AWS Lambda Function Versioning and Aliases. This operation requires permission for the lambda:GetFunctionConfiguration operation.
    public func getFunctionConfiguration(_ input: GetFunctionConfigurationRequest) throws -> FunctionConfiguration {
        return try client.send(operation: "GetFunctionConfiguration", path: "/2015-03-31/functions/{FunctionName}/configuration", httpMethod: "GET", input: input)
    }

    ///  Returns the resource policy associated with the specified Lambda function.  If you are using the versioning feature, you can get the resource policy associated with the specific Lambda function version or alias by specifying the version or alias name using the Qualifier parameter. For more information about versioning, see AWS Lambda Function Versioning and Aliases.  For information about adding permissions, see AddPermission. You need permission for the lambda:GetPolicy action. 
    public func getPolicy(_ input: GetPolicyRequest) throws -> GetPolicyResponse {
        return try client.send(operation: "GetPolicy", path: "/2015-03-31/functions/{FunctionName}/policy", httpMethod: "GET", input: input)
    }

    ///  Creates an alias that points to the specified Lambda function version. For more information, see Introduction to AWS Lambda Aliases. Alias names are unique for a given function. This requires permission for the lambda:CreateAlias action.
    public func createAlias(_ input: CreateAliasRequest) throws -> AliasConfiguration {
        return try client.send(operation: "CreateAlias", path: "/2015-03-31/functions/{FunctionName}/aliases", httpMethod: "POST", input: input)
    }

    ///  Returns a customer's account settings. You can use this operation to retrieve Lambda limits information, such as code size and concurrency limits. For more information about limits, see AWS Lambda Limits. You can also retrieve resource usage statistics, such as code storage usage and function count.
    public func getAccountSettings(_ input: GetAccountSettingsRequest) throws -> GetAccountSettingsResponse {
        return try client.send(operation: "GetAccountSettings", path: "/2016-08-19/account-settings/", httpMethod: "GET", input: input)
    }

    ///  Returns list of aliases created for a Lambda function. For each alias, the response includes information such as the alias ARN, description, alias name, and the function version to which it points. For more information, see Introduction to AWS Lambda Aliases. This requires permission for the lambda:ListAliases action.
    public func listAliases(_ input: ListAliasesRequest) throws -> ListAliasesResponse {
        return try client.send(operation: "ListAliases", path: "/2015-03-31/functions/{FunctionName}/aliases", httpMethod: "GET", input: input)
    }

    ///  Publishes a version of your function from the current snapshot of $LATEST. That is, AWS Lambda takes a snapshot of the function code and configuration information from $LATEST and publishes a new version. The code and configuration cannot be modified after publication. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases. 
    public func publishVersion(_ input: PublishVersionRequest) throws -> FunctionConfiguration {
        return try client.send(operation: "PublishVersion", path: "/2015-03-31/functions/{FunctionName}/versions", httpMethod: "POST", input: input)
    }

    ///  Using this API you can update the function version to which the alias points and the alias description. For more information, see Introduction to AWS Lambda Aliases. This requires permission for the lambda:UpdateAlias action.
    public func updateAlias(_ input: UpdateAliasRequest) throws -> AliasConfiguration {
        return try client.send(operation: "UpdateAlias", path: "/2015-03-31/functions/{FunctionName}/aliases/{Name}", httpMethod: "PUT", input: input)
    }

    ///  You can update an event source mapping. This is useful if you want to change the parameters of the existing mapping without losing your position in the stream. You can change which function will receive the stream records, but to change the stream itself, you must create a new mapping. If you are using the versioning feature, you can update the event source mapping to map to a specific Lambda function version or alias as described in the FunctionName parameter. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases.  If you disable the event source mapping, AWS Lambda stops polling. If you enable again, it will resume polling from the time it had stopped polling, so you don't lose processing of any records. However, if you delete event source mapping and create it again, it will reset. This operation requires permission for the lambda:UpdateEventSourceMapping action.
    public func updateEventSourceMapping(_ input: UpdateEventSourceMappingRequest) throws -> EventSourceMappingConfiguration {
        return try client.send(operation: "UpdateEventSourceMapping", path: "/2015-03-31/event-source-mappings/{UUID}", httpMethod: "PUT", input: input)
    }

    ///  Updates the code for the specified Lambda function. This operation must only be used on an existing Lambda function and cannot be used to update the function configuration. If you are using the versioning feature, note this API will always update the $LATEST version of your Lambda function. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:UpdateFunctionCode action.
    public func updateFunctionCode(_ input: UpdateFunctionCodeRequest) throws -> FunctionConfiguration {
        return try client.send(operation: "UpdateFunctionCode", path: "/2015-03-31/functions/{FunctionName}/code", httpMethod: "PUT", input: input)
    }

    ///  Creates a new Lambda function. The function metadata is created from the request parameters, and the code for the function is provided by a .zip file in the request body. If the function name already exists, the operation will fail. Note that the function name is case-sensitive.  If you are using versioning, you can also publish a version of the Lambda function you are creating using the Publish parameter. For more information about versioning, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:CreateFunction action.
    public func createFunction(_ input: CreateFunctionRequest) throws -> FunctionConfiguration {
        return try client.send(operation: "CreateFunction", path: "/2015-03-31/functions", httpMethod: "POST", input: input)
    }

    ///  Returns a list of event source mappings you created using the CreateEventSourceMapping (see CreateEventSourceMapping).  For each mapping, the API returns configuration information. You can optionally specify filters to retrieve specific event source mappings. If you are using the versioning feature, you can get list of event source mappings for a specific Lambda function version or an alias as described in the FunctionName parameter. For information about the versioning feature, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:ListEventSourceMappings action.
    public func listEventSourceMappings(_ input: ListEventSourceMappingsRequest) throws -> ListEventSourceMappingsResponse {
        return try client.send(operation: "ListEventSourceMappings", path: "/2015-03-31/event-source-mappings/", httpMethod: "GET", input: input)
    }

    ///  Identifies a stream as an event source for a Lambda function. It can be either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS Lambda invokes the specified function when records are posted to the stream. This association between a stream source and a Lambda function is called the event source mapping. This event source mapping is relevant only in the AWS Lambda pull model, where AWS Lambda invokes the function. For more information, see AWS Lambda: How it Works in the AWS Lambda Developer Guide.  You provide mapping information (for example, which stream to read from and which Lambda function to invoke) in the request body. Each event source, such as an Amazon Kinesis or a DynamoDB stream, can be associated with multiple AWS Lambda function. A given Lambda function can be associated with multiple AWS event sources. If you are using versioning, you can specify a specific function version or an alias via the function name parameter. For more information about versioning, see AWS Lambda Function Versioning and Aliases.  This operation requires permission for the lambda:CreateEventSourceMapping action.
    public func createEventSourceMapping(_ input: CreateEventSourceMappingRequest) throws -> EventSourceMappingConfiguration {
        return try client.send(operation: "CreateEventSourceMapping", path: "/2015-03-31/event-source-mappings/", httpMethod: "POST", input: input)
    }


}