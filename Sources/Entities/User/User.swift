import Foundation

public enum User {}

public extension User {
    enum Detail {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let email: String
            public let firstName: String?
            public let lastName: String?
            public let location: Location?
            public let avatar: UUID?
            public let isAdmin: Bool
            public let isEmailVerified: Bool
            public let followers: [User.List.Response]
            public let following: [User.List.Response]
            public let businesses: [Business.List.Response]

            public init(
                id: UUID,
                email: String,
                firstName: String? = nil,
                lastName: String? = nil,
                location: Location? = nil,
                avatar: UUID? = nil,
                followers: [User.List.Response] = [],
                following: [User.List.Response] = [],
                isAdmin: Bool,
                isEmailVerified: Bool,
                businesses: [Business.List.Response] = []
            ) {
                self.id = id
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.location = location
                self.avatar = avatar
                self.followers = followers
                self.following = following
                self.isAdmin = isAdmin
                self.isEmailVerified = isEmailVerified
                self.businesses = businesses
            }
        }
    }
    
    enum Update {
        public struct Request: Codable, Equatable {
            public let email: String?
            public let firstName: String?
            public let lastName: String?
            public let location: Location?

            public init(
                email: String? = nil,
                firstName: String? = nil,
                lastName: String? = nil,
                location: Location? = nil
            ) {
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.location = location
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let email: String
            public let firstName: String?
            public let lastName: String?
            public let location: Location?
            public let isAdmin: Bool
            public let isEmailVerified: Bool

            public init(
                id: UUID,
                email: String,
                firstName: String? = nil,
                lastName: String? = nil,
                location: Location? = nil,
                isAdmin: Bool,
                isEmailVerified: Bool
            ) {
                self.id = id
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.location = location
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
            public let avatar: UUID?
            public let email: String

            public init(
                id: UUID,
                firstName: String? = nil,
                lastName: String? = nil,
                avatar: UUID? = nil,
                email: String
            ) {
                self.id = id
                self.firstName = firstName
                self.lastName = lastName
                self.avatar = avatar
                self.email = email
            }
        }
    }
}
