import Foundation

public struct NotificationPayload: Codable, Equatable {
    public enum Path: String, Codable {
        case post
        case discover
        case shoppingList = "shopping_list"
    }
    
    public let path: Path
    public let postId: UUID?
    
    public init(
        path: Path,
        postId: UUID? = nil
    ) {
        self.path = path
        self.postId = postId
    }
}
