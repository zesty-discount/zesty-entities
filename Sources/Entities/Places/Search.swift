import Foundation

public enum Places {}

public extension Places {
    struct Place: Codable, Equatable {
        public let name: String
        public let address: String
        public let latitude: Double
        public let longitude: Double
        
        public init(
            name: String,
            address: String,
            latitude: Double,
            longitude: Double
        ) {
            self.name = name
            self.address = address
            self.latitude = latitude
            self.longitude = longitude
        }
    }
    
    enum Search {
        public struct Response: Codable, Equatable {
            public let places: [Place]
            
            public init(places: [Place]) {
                self.places = places
            }
        }
    }
}
