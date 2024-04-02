import Foundation

public enum ContentError: String, IdentifiableError {
    
    case contentNotFound = "content_not_found"
    
    public var identifier: String {
        rawValue
    }
    
    public var reason: String {
        switch self {
        case .contentNotFound:
            return "Requested content not found"
        }
    }
}
