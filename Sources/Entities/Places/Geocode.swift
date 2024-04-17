import Foundation

public extension Places {
    enum Geocode {
        public struct Response: Codable, Equatable {
            public let placeId: String
            public let address: String
            public let lat: Double
            public let lon: Double
            
            public init(
                placeId: String,
                address: String,
                lat: Double,
                lon: Double
            ) {
                self.placeId = placeId
                self.address = address
                self.lat = lat
                self.lon = lon
            }
        }
    }
}
