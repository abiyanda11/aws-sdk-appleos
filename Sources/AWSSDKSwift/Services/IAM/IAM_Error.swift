// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IAM
public enum IAMErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case credentialReportExpiredException(message: String?)
    case credentialReportNotPresentException(message: String?)
    case credentialReportNotReadyException(message: String?)
    case deleteConflictException(message: String?)
    case duplicateCertificateException(message: String?)
    case duplicateSSHPublicKeyException(message: String?)
    case entityAlreadyExistsException(message: String?)
    case entityTemporarilyUnmodifiableException(message: String?)
    case invalidAuthenticationCodeException(message: String?)
    case invalidCertificateException(message: String?)
    case invalidInputException(message: String?)
    case invalidPublicKeyException(message: String?)
    case invalidUserTypeException(message: String?)
    case keyPairMismatchException(message: String?)
    case limitExceededException(message: String?)
    case malformedCertificateException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case noSuchEntityException(message: String?)
    case passwordPolicyViolationException(message: String?)
    case policyEvaluationException(message: String?)
    case policyNotAttachableException(message: String?)
    case reportGenerationLimitExceededException(message: String?)
    case serviceFailureException(message: String?)
    case serviceNotSupportedException(message: String?)
    case unmodifiableEntityException(message: String?)
    case unrecognizedPublicKeyEncodingException(message: String?)
}

extension IAMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "CredentialReportExpiredException":
            self = .credentialReportExpiredException(message: message)
        case "CredentialReportNotPresentException":
            self = .credentialReportNotPresentException(message: message)
        case "CredentialReportNotReadyException":
            self = .credentialReportNotReadyException(message: message)
        case "DeleteConflictException":
            self = .deleteConflictException(message: message)
        case "DuplicateCertificateException":
            self = .duplicateCertificateException(message: message)
        case "DuplicateSSHPublicKeyException":
            self = .duplicateSSHPublicKeyException(message: message)
        case "EntityAlreadyExistsException":
            self = .entityAlreadyExistsException(message: message)
        case "EntityTemporarilyUnmodifiableException":
            self = .entityTemporarilyUnmodifiableException(message: message)
        case "InvalidAuthenticationCodeException":
            self = .invalidAuthenticationCodeException(message: message)
        case "InvalidCertificateException":
            self = .invalidCertificateException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "InvalidPublicKeyException":
            self = .invalidPublicKeyException(message: message)
        case "InvalidUserTypeException":
            self = .invalidUserTypeException(message: message)
        case "KeyPairMismatchException":
            self = .keyPairMismatchException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MalformedCertificateException":
            self = .malformedCertificateException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "NoSuchEntityException":
            self = .noSuchEntityException(message: message)
        case "PasswordPolicyViolationException":
            self = .passwordPolicyViolationException(message: message)
        case "PolicyEvaluationException":
            self = .policyEvaluationException(message: message)
        case "PolicyNotAttachableException":
            self = .policyNotAttachableException(message: message)
        case "ReportGenerationLimitExceededException":
            self = .reportGenerationLimitExceededException(message: message)
        case "ServiceFailureException":
            self = .serviceFailureException(message: message)
        case "ServiceNotSupportedException":
            self = .serviceNotSupportedException(message: message)
        case "UnmodifiableEntityException":
            self = .unmodifiableEntityException(message: message)
        case "UnrecognizedPublicKeyEncodingException":
            self = .unrecognizedPublicKeyEncodingException(message: message)
        default:
            return nil
        }
    }
}

extension IAMErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .credentialReportExpiredException(let message):
            return "CredentialReportExpiredException: \(message ?? "")"
        case .credentialReportNotPresentException(let message):
            return "CredentialReportNotPresentException: \(message ?? "")"
        case .credentialReportNotReadyException(let message):
            return "CredentialReportNotReadyException: \(message ?? "")"
        case .deleteConflictException(let message):
            return "DeleteConflictException: \(message ?? "")"
        case .duplicateCertificateException(let message):
            return "DuplicateCertificateException: \(message ?? "")"
        case .duplicateSSHPublicKeyException(let message):
            return "DuplicateSSHPublicKeyException: \(message ?? "")"
        case .entityAlreadyExistsException(let message):
            return "EntityAlreadyExistsException: \(message ?? "")"
        case .entityTemporarilyUnmodifiableException(let message):
            return "EntityTemporarilyUnmodifiableException: \(message ?? "")"
        case .invalidAuthenticationCodeException(let message):
            return "InvalidAuthenticationCodeException: \(message ?? "")"
        case .invalidCertificateException(let message):
            return "InvalidCertificateException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .invalidPublicKeyException(let message):
            return "InvalidPublicKeyException: \(message ?? "")"
        case .invalidUserTypeException(let message):
            return "InvalidUserTypeException: \(message ?? "")"
        case .keyPairMismatchException(let message):
            return "KeyPairMismatchException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .malformedCertificateException(let message):
            return "MalformedCertificateException: \(message ?? "")"
        case .malformedPolicyDocumentException(let message):
            return "MalformedPolicyDocumentException: \(message ?? "")"
        case .noSuchEntityException(let message):
            return "NoSuchEntityException: \(message ?? "")"
        case .passwordPolicyViolationException(let message):
            return "PasswordPolicyViolationException: \(message ?? "")"
        case .policyEvaluationException(let message):
            return "PolicyEvaluationException: \(message ?? "")"
        case .policyNotAttachableException(let message):
            return "PolicyNotAttachableException: \(message ?? "")"
        case .reportGenerationLimitExceededException(let message):
            return "ReportGenerationLimitExceededException: \(message ?? "")"
        case .serviceFailureException(let message):
            return "ServiceFailureException: \(message ?? "")"
        case .serviceNotSupportedException(let message):
            return "ServiceNotSupportedException: \(message ?? "")"
        case .unmodifiableEntityException(let message):
            return "UnmodifiableEntityException: \(message ?? "")"
        case .unrecognizedPublicKeyEncodingException(let message):
            return "UnrecognizedPublicKeyEncodingException: \(message ?? "")"
        }
    }
}
