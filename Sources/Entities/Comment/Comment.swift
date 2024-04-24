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
    
    enum Detail {
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let text: String
            public let parentID: UUID?
            public let children: [Comment.Detail.Response]
            public let postID: UUID
            public let user: User.Detail.Response

            public init(
                id: UUID,
                text: String,
                parentID: UUID?,
                children: [Comment.Detail.Response],
                postID: UUID,
                user: User.Detail.Response
            ) {
                self.id = id
                self.text = text
                self.parentID = parentID
                self.children = children
                self.postID = postID
                self.user = user
            }
        }
    }
}
