import Foundation

public enum ShoppingList {}
public extension ShoppingList {
    enum Category: String, Codable, Equatable {
        case deals, premium, undefined
    }

    enum Add {
        public struct Request: Codable, Equatable {
            public let products: [UUID]
            public let category: Category
            
            public init(
                products: [UUID],
                category: Category
            ) {
                self.products = products
                self.category = category
            }
        }
        
        public struct Response: Codable, Equatable {
            public let deals: [Product.List.Response]
            public let premium: [Product.List.Response]
            
            public init(
                deals: [Product.List.Response],
                premium: [Product.List.Response]
            ) {
                self.deals = deals
                self.premium = premium
            }
        }
    }
}
