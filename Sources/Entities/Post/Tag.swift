import Foundation

public enum Tag: String, Codable {
    case under25 = "under_25"
    case local = "local_services"
    case fresh = "fresh_produce"
    case costco = "costco_deals"
    
    public var icon: String {
        switch self {
        case .under25:
            "takeoutbag.and.cup.and.straw"
        case .local:
            "wrench.and.screwdriver"
        case .fresh:
            "seal"
        case .costco:
            "bag"
        }
    }
    
    public var name: String {
        switch self {
        case .under25:
            "Dinner under $25"
        case .local:
            "Local Services"
        case .fresh:
            "Fresh Produce"
        case .costco:
            "Costco Deals"
        }
    }
}
