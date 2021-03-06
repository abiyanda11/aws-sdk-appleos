// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for WAF
public enum WAFErrorType: AWSErrorType {
    case wAFBadRequestException(message: String?)
    case wAFDisallowedNameException(message: String?)
    case wAFInternalErrorException(message: String?)
    case wAFInvalidAccountException(message: String?)
    case wAFInvalidOperationException(message: String?)
    case wAFInvalidParameterException(message: String?)
    case wAFInvalidPermissionPolicyException(message: String?)
    case wAFInvalidRegexPatternException(message: String?)
    case wAFLimitsExceededException(message: String?)
    case wAFNonEmptyEntityException(message: String?)
    case wAFNonexistentContainerException(message: String?)
    case wAFNonexistentItemException(message: String?)
    case wAFReferencedItemException(message: String?)
    case wAFServiceLinkedRoleErrorException(message: String?)
    case wAFStaleDataException(message: String?)
    case wAFSubscriptionNotFoundException(message: String?)
    case wAFTagOperationException(message: String?)
    case wAFTagOperationInternalErrorException(message: String?)
}

extension WAFErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "WAFBadRequestException":
            self = .wAFBadRequestException(message: message)
        case "WAFDisallowedNameException":
            self = .wAFDisallowedNameException(message: message)
        case "WAFInternalErrorException":
            self = .wAFInternalErrorException(message: message)
        case "WAFInvalidAccountException":
            self = .wAFInvalidAccountException(message: message)
        case "WAFInvalidOperationException":
            self = .wAFInvalidOperationException(message: message)
        case "WAFInvalidParameterException":
            self = .wAFInvalidParameterException(message: message)
        case "WAFInvalidPermissionPolicyException":
            self = .wAFInvalidPermissionPolicyException(message: message)
        case "WAFInvalidRegexPatternException":
            self = .wAFInvalidRegexPatternException(message: message)
        case "WAFLimitsExceededException":
            self = .wAFLimitsExceededException(message: message)
        case "WAFNonEmptyEntityException":
            self = .wAFNonEmptyEntityException(message: message)
        case "WAFNonexistentContainerException":
            self = .wAFNonexistentContainerException(message: message)
        case "WAFNonexistentItemException":
            self = .wAFNonexistentItemException(message: message)
        case "WAFReferencedItemException":
            self = .wAFReferencedItemException(message: message)
        case "WAFServiceLinkedRoleErrorException":
            self = .wAFServiceLinkedRoleErrorException(message: message)
        case "WAFStaleDataException":
            self = .wAFStaleDataException(message: message)
        case "WAFSubscriptionNotFoundException":
            self = .wAFSubscriptionNotFoundException(message: message)
        case "WAFTagOperationException":
            self = .wAFTagOperationException(message: message)
        case "WAFTagOperationInternalErrorException":
            self = .wAFTagOperationInternalErrorException(message: message)
        default:
            return nil
        }
    }
}

extension WAFErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .wAFBadRequestException(let message):
            return "WAFBadRequestException: \(message ?? "")"
        case .wAFDisallowedNameException(let message):
            return "WAFDisallowedNameException: \(message ?? "")"
        case .wAFInternalErrorException(let message):
            return "WAFInternalErrorException: \(message ?? "")"
        case .wAFInvalidAccountException(let message):
            return "WAFInvalidAccountException: \(message ?? "")"
        case .wAFInvalidOperationException(let message):
            return "WAFInvalidOperationException: \(message ?? "")"
        case .wAFInvalidParameterException(let message):
            return "WAFInvalidParameterException: \(message ?? "")"
        case .wAFInvalidPermissionPolicyException(let message):
            return "WAFInvalidPermissionPolicyException: \(message ?? "")"
        case .wAFInvalidRegexPatternException(let message):
            return "WAFInvalidRegexPatternException: \(message ?? "")"
        case .wAFLimitsExceededException(let message):
            return "WAFLimitsExceededException: \(message ?? "")"
        case .wAFNonEmptyEntityException(let message):
            return "WAFNonEmptyEntityException: \(message ?? "")"
        case .wAFNonexistentContainerException(let message):
            return "WAFNonexistentContainerException: \(message ?? "")"
        case .wAFNonexistentItemException(let message):
            return "WAFNonexistentItemException: \(message ?? "")"
        case .wAFReferencedItemException(let message):
            return "WAFReferencedItemException: \(message ?? "")"
        case .wAFServiceLinkedRoleErrorException(let message):
            return "WAFServiceLinkedRoleErrorException: \(message ?? "")"
        case .wAFStaleDataException(let message):
            return "WAFStaleDataException: \(message ?? "")"
        case .wAFSubscriptionNotFoundException(let message):
            return "WAFSubscriptionNotFoundException: \(message ?? "")"
        case .wAFTagOperationException(let message):
            return "WAFTagOperationException: \(message ?? "")"
        case .wAFTagOperationInternalErrorException(let message):
            return "WAFTagOperationInternalErrorException: \(message ?? "")"
        }
    }
}
