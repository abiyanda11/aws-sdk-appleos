// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for S3Control
public enum S3ControlErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case idempotencyException(message: String?)
    case internalServiceException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidRequestException(message: String?)
    case jobStatusException(message: String?)
    case noSuchPublicAccessBlockConfiguration(message: String?)
    case notFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension S3ControlErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "IdempotencyException":
            self = .idempotencyException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "JobStatusException":
            self = .jobStatusException(message: message)
        case "NoSuchPublicAccessBlockConfiguration":
            self = .noSuchPublicAccessBlockConfiguration(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension S3ControlErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .badRequestException(let message):
            return "BadRequestException: \(message ?? "")"
        case .idempotencyException(let message):
            return "IdempotencyException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidRequestException(let message):
            return "InvalidRequestException: \(message ?? "")"
        case .jobStatusException(let message):
            return "JobStatusException: \(message ?? "")"
        case .noSuchPublicAccessBlockConfiguration(let message):
            return "NoSuchPublicAccessBlockConfiguration: \(message ?? "")"
        case .notFoundException(let message):
            return "NotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
