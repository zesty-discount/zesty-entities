import Foundation

public enum Comment {}

public extension Comment {
    enum Create {
        public struct Request: Codable, Equatable {
            public let text: String
            
            public init(
                text: String
            ) {
                self.text = text
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let text: String
            public let postID: UUID
            public let userID: UUID
            
            public init(
                id: UUID,
                text: String,
                postID: UUID,
                userID: UUID
            ) {
                self.id = id
                self.text = text
                self.postID = postID
                self.userID = userID
            }
        }
    }
    
    enum Reply {
        public struct Request: Codable, Equatable {
            public let text: String
            
            public init(
                text: String
            ) {
                self.text = text
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let text: String
            public let parentId: UUID
            public let postID: UUID
            public let userID: UUID
            
            public init(
                id: UUID,
                text: String,
                parentId: UUID,
                postID: UUID,
                userID: UUID
            ) {
                self.id = id
                self.text = text
                self.parentId = parentId
                self.postID = postID
                self.userID = userID
            }
        }
    }
    
    enum List {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let text: String
            public let postID: UUID
            public let user: User.List.Response

            public init(
                id: UUID,
                text: String,
                postID: UUID,
                user: User.List.Response
            ) {
                self.id = id
                self.text = text
                self.postID = postID
                self.user = user
            }
        }
    }
}
