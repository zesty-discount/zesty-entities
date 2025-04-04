import Foundation

public enum Metadata {
    public struct Request: Codable, Sendable {
        public let attestation: Attestation.Verification.Request
        
        public init(attestation: Attestation.Verification.Request) {
            self.attestation = attestation
        }
    }
    
    public struct Response: Codable, Sendable {
        public let key: String
        
        public init(key: String) {
            self.key = key
        }
    }
}
