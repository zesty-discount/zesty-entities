import Foundation

public enum FoodItems {}
public extension FoodItems {
    enum Autocomplete {
        public struct Response: Codable, Equatable {
            public let name: String
            public let id: Int
            public let thumbnail: String
            public let image: String
            
            public init(
                name: String,
                id: Int,
                thumbnail: String,
                image: String
            ) {
                self.name = name
                self.id = id
                self.thumbnail = thumbnail
                self.image = image
            }
        }
    }
}
