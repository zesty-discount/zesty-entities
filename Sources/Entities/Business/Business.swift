import Foundation

public enum Business {}

public extension Business {
    enum Create {
        public struct Request: Codable, Equatable {
            public let name: String
            public let openingTimes: [OpeningTime]
            public let industry: String
            public let website: String?
            public let phone: String
            public let email: String
            public let description: String
            public let photoIds: [UUID]
            public let avatarId: UUID
            public let isVerified: Bool
            
            public init(
                name: String,
                openingTimes: [OpeningTime],
                industry: String,
                website: String? = nil,
                phone: String,
                email: String,
                description: String,
                photoIds: [UUID],
                avatarId: UUID,
                isVerified: Bool
            ) {
                self.name = name
                self.openingTimes = openingTimes
                self.industry = industry
                self.website = website
                self.phone = phone
                self.email = email
                self.description = description
                self.photoIds = photoIds
                self.avatarId = avatarId
                self.isVerified = isVerified
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let email: String
            public let isEmailVerified: Bool
            public let name: String
            public let openingTimes: [OpeningTime]
            public let industry: String
            public let website: String?
            public let phone: String
            public let contactEmail: String
            public let description: String
            public let photoIds: [UUID]
            public let avatarId: UUID
            public let isBusinessVerified: Bool

            public init(
                userID: UUID,
                id: UUID,
                email: String,
                isEmailVerified: Bool,
                name: String,
                openingTimes: [OpeningTime],
                industry: String,
                website: String?,
                phone: String,
                contactEmail: String,
                description: String,
                photoIds: [UUID],
                avatarId: UUID,
                isBusinessVerified: Bool
            ) {
                self.id = id
                self.email = email
                self.isEmailVerified = isEmailVerified
                self.name = name
                self.openingTimes = openingTimes
                self.industry = industry
                self.website = website
                self.phone = phone
                self.contactEmail = contactEmail
                self.description = description
                self.photoIds = photoIds
                self.avatarId = avatarId
                self.isBusinessVerified = isBusinessVerified
            }
        }
    }
    
    enum List {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let email: String
            public let name: String
            public let openingTimes: [OpeningTime]
            public let industry: String
            public let website: String?
            public let phone: String
            public let contactEmail: String
            public let description: String
            public let photoIds: [UUID]
            
            public init(
                id: UUID,
                email: String,
                name: String,
                openingTimes: [OpeningTime],
                industry: String,
                website: String?,
                phone: String,
                contactEmail: String,
                description: String,
                photoIds: [UUID]
            ) {
                self.id = id
                self.email = email
                self.name = name
                self.openingTimes = openingTimes
                self.industry = industry
                self.website = website
                self.phone = phone
                self.contactEmail = contactEmail
                self.description = description
                self.photoIds = photoIds
            }
        }
    }
}

public extension Business {
    struct OpeningTime: Codable, Equatable {
        public enum Day: String, Codable, Equatable {
            case monday
            case tuesday
            case wednesday
            case thursday
            case friday
            case saturday
            case sunday
        }
        
        public let day: Day
        public let opening: String
        public let closing: String
        
        public init(
            day: Day,
            opening: String,
            closing: String
        ) {
            self.day = day
            self.opening = opening
            self.closing = closing
        }
    }
}
