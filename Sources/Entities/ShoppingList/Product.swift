import Foundation

public enum Product {}
public extension Product {
    enum Category: String, Codable, Equatable, Sendable {
        case fruit, vegetable, meat, unknown
    }
    
    enum List {
        public struct Request: Codable, Equatable, Sendable {
            public init() {}
        }
        
        public struct Response: Codable, Equatable, Sendable {
            public let id: UUID
            public let name: String
            public let category: Category
            public let imageId: UUID
            
            public init(
                id: UUID,
                name: String,
                category: Category,
                imageId: UUID
            ) {
                self.id = id
                self.name = name
                self.category = category
                self.imageId = imageId
            }
        }
    }
}
