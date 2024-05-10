import Foundation

public enum Post {}
public extension Post {
    enum Create {
        public struct Request: Codable, Equatable {
            public let title: String
            public let text: String
            public let category: Category
            public let tags: [Tag]
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            
            public init(
                title: String,
                text: String,
                category: Category,
                tags: [Tag],
                imageIDs: [UUID],
                videoIDs: [UUID]
            ) {
                self.title = title
                self.text = text
                self.category = category
                self.tags = tags
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let title: String
            public let createdAt: Date
            public let text: String
            public let category: Category
            public let tags: [Tag]
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            
            public init(
                id: UUID,
                title: String,
                createdAt: Date,
                text: String,
                category: Category,
                tags: [Tag],
                imageIDs: [UUID],
                videoIDs: [UUID]
            ) {
                self.id = id
                self.title = title
                self.createdAt = createdAt
                self.text = text
                self.category = category
                self.tags = tags
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
            public let title: String
            public let createdAt: Date
            public let text: String
            public let thumbnail: UUID
            public let user: User.List.Response
            public let likes: Int
            public let commentCount: Int
            public let tags: [String]
            
            public init(
                id: UUID,
                title: String,
                createdAt: Date,
                text: String,
                thumbnail: UUID,
                user: User.List.Response,
                likes: Int,
                commentCount: Int,
                tags: [String]
            ) {
                self.id = id
                self.title = title
                self.createdAt = createdAt
                self.text = text
                self.thumbnail = thumbnail
                self.user = user
                self.likes = likes
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
            public let title: String
            public let createdAt: Date
            public let user: User.Detail.Response
            public let comments: [Comment.List.Response]
            public let text: String
            public let category: Category
            public let tags: [Tag]
            public let likes: Int
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            
            public init(
                id: UUID,
                title: String,
                createdAt: Date,
                user: User.Detail.Response,
                comments: [Comment.List.Response],
                text: String,
                category: Category,
                tags: [Tag],
                likes: Int,
                imageIDs: [UUID],
                videoIDs: [UUID]
            ) {
                self.id = id
                self.title = title
                self.createdAt = createdAt
                self.user = user
                self.text = text
                self.category = category
                self.tags = tags
                self.likes = likes
                self.comments = comments
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
            }
        }
    }
}
