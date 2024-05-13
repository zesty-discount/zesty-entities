import Foundation

public struct Location: Codable, Equatable {
    public let address: String
    public let city: String
    public let zipcode: String
    public let longitude: Double
    public let latitude: Double
    public let radius: Double?
    
    public init(
        address: String,
        city: String,
        zipcode: String,
        longitude: Double,
        latitude: Double,
        radius: Double?
    ) {
        self.address = address
        self.city = city
        self.zipcode = zipcode
        self.longitude = longitude
        self.latitude = latitude
        self.radius = radius
    }
}
