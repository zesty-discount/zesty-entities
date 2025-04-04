import Foundation

public extension Places {
    enum Autocomplete {
        public struct Request: Codable, Equatable, Sendable {
            public let query: String
            
            public init(query: String) {
                self.query = query
            }
        }
        
        public struct Response: Codable, Equatable, Sendable {
            public struct Suggestion: Codable, Equatable, Sendable {
                public let placeId: String
                public let mainText: String
                public let secondaryText: String
                
                public init(
                    placeId: String,
                    mainText: String,
                    secondaryText: String
                ) {
                    self.placeId = placeId
                    self.mainText = mainText
                    self.secondaryText = secondaryText
                }
            }
            
            public let suggestions: [Suggestion]
            
            public init(suggestions: [Suggestion]) {
                self.suggestions = suggestions
            }
        }
    }
}
