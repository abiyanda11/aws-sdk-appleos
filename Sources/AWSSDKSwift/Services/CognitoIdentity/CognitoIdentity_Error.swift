// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CognitoIdentity
public enum CognitoIdentityErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case developerUserAlreadyRegisteredException(message: String?)
    case externalServiceException(message: String?)
    case internalErrorException(message: String?)
    case invalidIdentityPoolConfigurationException(message: String?)
    case invalidParameterException(message: String?)
    case limitExceededException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceConflictException(message: String?)
    case resourceNotFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension CognitoIdentityErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DeveloperUserAlreadyRegisteredException":
            self = .developerUserAlreadyRegisteredException(message: message)
        case "ExternalServiceException":
            self = .externalServiceException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidIdentityPoolConfigurationException":
            self = .invalidIdentityPoolConfigurationException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}

extension CognitoIdentityErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .developerUserAlreadyRegisteredException(let message):
            return "DeveloperUserAlreadyRegisteredException: \(message ?? "")"
        case .externalServiceException(let message):
            return "ExternalServiceException: \(message ?? "")"
        case .internalErrorException(let message):
            return "InternalErrorException: \(message ?? "")"
        case .invalidIdentityPoolConfigurationException(let message):
            return "InvalidIdentityPoolConfigurationException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .notAuthorizedException(let message):
            return "NotAuthorizedException: \(message ?? "")"
        case .resourceConflictException(let message):
            return "ResourceConflictException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tooManyRequestsException(let message):
            return "TooManyRequestsException: \(message ?? "")"
        }
    }
}
