import Foundation

public enum Category: String, Codable, CaseIterable, Identifiable {
    case grocery = "grocery"
    case organic = "organic_food"
    case restaurant = "restaurant"
    case homeKitchen = "home_kitchen"
    
    public var id: String { rawValue }
    
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
