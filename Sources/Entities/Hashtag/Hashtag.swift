import Foundation

public enum HashTag {}
public extension HashTag {
    enum Create {
        public struct Request: Codable, Equatable {
            public let tag: String
            
            public init(
                tag: String
            ) {
                self.tag = tag
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let tag: String
            public let createdAt: Date
            
            public init(
                id: UUID,
                tag: String,
                createdAt: Date
            ) {
                self.id = id
                self.tag = tag
                self.createdAt = createdAt
            }
        }
    }
    
    enum List {
        public struct Request: Codable, Equatable {
            
            public init() {}
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let tag: String
            public let createdAt: Date
            
            public init(
                id: UUID,
                tag: String,
                createdAt: Date
            ) {
                self.id = id
                self.tag = tag
                self.createdAt = createdAt
            }
        }
    }
    
    enum Detail {
        public struct Request: Codable, Equatable {
            public init() {}
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let tag: String
            public let createdAt: Date
            
            public init(
                id: UUID,
                tag: String,
                createdAt: Date
            ) {
                self.id = id
                self.tag = tag
                self.createdAt = createdAt
            }
        }
    }
}
