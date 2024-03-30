import Foundation

public enum User {}

public extension User {
    enum Detail {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let email: String
            public let firstName: String?
            public let lastName: String?
            public let isAdmin: Bool
            public let isEmailVerified: Bool

            public init(
                id: UUID,
                email: String,
                firstName: String? = nil,
                lastName: String? = nil,
                isAdmin: Bool,
                isEmailVerified: Bool
            ) {
                self.id = id
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.isAdmin = isAdmin
                self.isEmailVerified = isEmailVerified
            }
        }
    }
    
    enum Update {
        public struct Request: Codable, Equatable {
            public let email: String?
            public let firstName: String?
            public let lastName: String?

            public init(
                email: String? = nil,
                firstName: String? = nil,
                lastName: String? = nil
            ) {
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let email: String
            public let firstName: String?
            public let lastName: String?
            public let isAdmin: Bool
            public let isEmailVerified: Bool

            public init(
                id: UUID,
                email: String,
                firstName: String? = nil,
                lastName: String? = nil,
                isAdmin: Bool,
                isEmailVerified: Bool
            ) {
                self.id = id
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.isAdmin = isAdmin
                self.isEmailVerified = isEmailVerified
            }
        }
    }
    
    enum List {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let firstName: String?
            public let lastName: String?
            public let email: String

            public init(
                id: UUID,
                firstName: String? = nil,
                lastName: String? = nil,
                email: String
            ) {
                self.id = id
                self.firstName = firstName
                self.lastName = lastName
                self.email = email
            }
        }
    }
}
