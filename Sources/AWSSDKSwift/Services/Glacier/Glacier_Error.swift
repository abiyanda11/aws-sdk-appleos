// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Glacier
public enum GlacierErrorType: AWSErrorType {
    case insufficientCapacityException(message: String?)
    case invalidParameterValueException(message: String?)
    case limitExceededException(message: String?)
    case missingParameterValueException(message: String?)
    case policyEnforcedException(message: String?)
    case requestTimeoutException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
}

extension GlacierErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InsufficientCapacityException":
            self = .insufficientCapacityException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MissingParameterValueException":
            self = .missingParameterValueException(message: message)
        case "PolicyEnforcedException":
            self = .policyEnforcedException(message: message)
        case "RequestTimeoutException":
            self = .requestTimeoutException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        default:
            return nil
        }
    }
}

extension GlacierErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .insufficientCapacityException(let message):
            return "InsufficientCapacityException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .missingParameterValueException(let message):
            return "MissingParameterValueException: \(message ?? "")"
        case .policyEnforcedException(let message):
            return "PolicyEnforcedException: \(message ?? "")"
        case .requestTimeoutException(let message):
            return "RequestTimeoutException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serviceUnavailableException(let message):
            return "ServiceUnavailableException: \(message ?? "")"
        }
    }
}
