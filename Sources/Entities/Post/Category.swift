import Foundation

public enum Category: String, Codable {
    case grocery = "grocery"
    case organic = "organic_food"
    case restaurant = "restaurant"
    case homeKitchen = "home_kitchen"
    
    public var name: String {
        switch self {
        case .grocery:
            "Grocery"
        case .organic:
            "Organic Food"
        case .restaurant:
            "Restaurant"
        case .homeKitchen:
            "Home Kitchen"
        }
    }
}
