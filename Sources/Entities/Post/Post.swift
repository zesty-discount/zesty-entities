import Foundation

public enum Post {}
public extension Post {
    enum Create {
        public struct Request: Codable, Equatable {
            public let text: String
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            
            public init(
                text: String,
                imageIDs: [UUID],
                videoIDs: [UUID]
            ) {
                self.text = text
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let createdAt: Date
            public let text: String
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            
            public init(
                id: UUID,
                createdAt: Date,
                text: String,
                imageIDs: [UUID],
                videoIDs: [UUID]
            ) {
                self.id = id
                self.createdAt = createdAt
                self.text = text
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
            }
        }
    }
    
    enum List {
        public struct Request: Codable, Equatable {
            
            public init() {}
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let createdAt: Date
            public let text: String
            public let thumbnail: UUID
            public let user: User.List.Response
            public let commentCount: Int
            public let tags: [String]
            
            public init(
                id: UUID,
                createdAt: Date,
                text: String,
                thumbnail: UUID,
                user: User.List.Response,
                commentCount: Int,
                tags: [String]
            ) {
                self.id = id
                self.createdAt = createdAt
                self.text = text
                self.thumbnail = thumbnail
                self.user = user
                self.commentCount = commentCount
                self.tags = tags
            }
        }
    }
    
    enum Detail {
        public struct Request: Codable, Equatable {
            public init() {}
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let createdAt: Date
            public let user: User.Detail.Response
            public let comments: [Comment.List.Response]
            public let text: String
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            public let tags: [String]
            
            public init(
                id: UUID,
                createdAt: Date,
                user: User.Detail.Response,
                comments: [Comment.List.Response],
                text: String,
                imageIDs: [UUID],
                videoIDs: [UUID],
                tags: [String]
            ) {
                self.id = id
                self.createdAt = createdAt
                self.user = user
                self.text = text
                self.comments = comments
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
                self.tags = tags
            }
        }
    }
}
