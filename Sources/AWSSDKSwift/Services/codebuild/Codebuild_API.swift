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
AWS CodeBuild AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apach Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests, and you pay only for the build time you consume. For more information about AWS CodeBuild, see the AWS CodeBuild User Guide. AWS CodeBuild supports these operations:    BatchGetProjects: Gets information about one or more build projects. A build project defines how AWS CodeBuild will run a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A build environment represents a combination of operating system, programming language runtime, and tools that AWS CodeBuild will use to run a build. Also, you can add tags to build projects to help manage your resources and costs.    CreateProject: Creates a build project.    DeleteProject: Deletes a build project.    ListProjects: Gets a list of build project names, with each build project name representing a single build project.    UpdateProject: Changes the settings of an existing build project.    BatchGetBuilds: Gets information about one or more builds.    ListBuilds: Gets a list of build IDs, with each build ID representing a single build.    ListBuildsForProject: Gets a list of build IDs for the specified build project, with each build ID representing a single build.    StartBuild: Starts running a build.    StopBuild: Attempts to stop running a build.    ListCuratedEnvironmentImages: Gets information about Docker images that are managed by AWS CodeBuild.  
*/
public struct Codebuild {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: Core.Region? = nil, endpoint: String? = nil, middlewares: [AWSRequestMiddleware] = []) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "CodeBuild_20161006",
            service: "codebuild",
            serviceProtocol: .json,
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CodebuildError.self]
        )
    }

    ///  Gets information about Docker images that are managed by AWS CodeBuild.
    public func listCuratedEnvironmentImages(_ input: ListCuratedEnvironmentImagesInput) throws -> ListCuratedEnvironmentImagesOutput {
        return try client.send(operation: "ListCuratedEnvironmentImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about builds.
    public func batchGetBuilds(_ input: BatchGetBuildsInput) throws -> BatchGetBuildsOutput {
        return try client.send(operation: "BatchGetBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts running a build.
    public func startBuild(_ input: StartBuildInput) throws -> StartBuildOutput {
        return try client.send(operation: "StartBuild", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build IDs for the specified build project, with each build ID representing a single build.
    public func listBuildsForProject(_ input: ListBuildsForProjectInput) throws -> ListBuildsForProjectOutput {
        return try client.send(operation: "ListBuildsForProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Attempts to stop running a build.
    public func stopBuild(_ input: StopBuildInput) throws -> StopBuildOutput {
        return try client.send(operation: "StopBuild", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build IDs, with each build ID representing a single build.
    public func listBuilds(_ input: ListBuildsInput) throws -> ListBuildsOutput {
        return try client.send(operation: "ListBuilds", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of build project names, with each build project name representing a single build project.
    public func listProjects(_ input: ListProjectsInput) throws -> ListProjectsOutput {
        return try client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a build project.
    public func deleteProject(_ input: DeleteProjectInput) throws -> DeleteProjectOutput {
        return try client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Changes the settings of a build project.
    public func updateProject(_ input: UpdateProjectInput) throws -> UpdateProjectOutput {
        return try client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a build project.
    public func createProject(_ input: CreateProjectInput) throws -> CreateProjectOutput {
        return try client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about build projects.
    public func batchGetProjects(_ input: BatchGetProjectsInput) throws -> BatchGetProjectsOutput {
        return try client.send(operation: "BatchGetProjects", path: "/", httpMethod: "POST", input: input)
    }


}