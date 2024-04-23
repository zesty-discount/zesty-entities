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
            public let text: String
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            
            public init(
                id: UUID,
                text: String,
                imageIDs: [UUID],
                videoIDs: [UUID]
            ) {
                self.id = id
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
            public let text: String
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            public let tags: [String]
            
            public init(
                id: UUID,
                text: String,
                imageIDs: [UUID],
                videoIDs: [UUID],
                tags: [String]
            ) {
                self.id = id
                self.text = text
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
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
            public let user: User.Detail.Response
            public let text: String
            public let imageIDs: [UUID]
            public let videoIDs: [UUID]
            public let tags: [String]
            
            public init(
                id: UUID,
                user: User.Detail.Response,
                text: String,
                imageIDs: [UUID],
                videoIDs: [UUID],
                tags: [String]
            ) {
                self.id = id
                self.user = user
                self.text = text
                self.imageIDs = imageIDs
                self.videoIDs = videoIDs
                self.tags = tags
            }
        }
    }
}
