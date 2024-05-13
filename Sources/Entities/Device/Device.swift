import Foundation

public enum Device {
    public enum Create {
        public struct Request: Codable, Equatable {
            public let system: String
            public let osVersion: String
            public let pushToken: String?
            
            public init(
                system: String,
                osVersion: String,
                pushToken: String?
            ) {
                self.system = system
                self.osVersion = osVersion
                self.pushToken = pushToken
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let system: String
            public let osVersion: String
            public let pushToken: String?
            
            public init(
                id: UUID,
                system: String,
                osVersion: String,
                pushToken: String?
            ) {
                self.id = id
                self.system = system
                self.osVersion = osVersion
                self.pushToken = pushToken
            }
        }
    }
    
    public enum Detail {
        public struct Request: Codable, Equatable {}
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let system: String
            public let osVersion: String
            public let pushToken: String?
            
            public init(
                id: UUID,
                system: String,
                osVersion: String,
                pushToken: String?
            ) {
                self.id = id
                self.system = system
                self.osVersion = osVersion
                self.pushToken = pushToken
            }
        }
    }
}
