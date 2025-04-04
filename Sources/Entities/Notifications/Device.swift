import Foundation

public enum Device {
    public enum System: String, Codable, Equatable, Sendable {
        case ios, android, unknown
    }
    
    public enum Create {
        public struct Request: Codable, Equatable, Sendable {
            public let system: System
            public let osVersion: String
            public let pushToken: String?
            
            public init(
                system: System,
                osVersion: String,
                pushToken: String?
            ) {
                self.system = system
                self.osVersion = osVersion
                self.pushToken = pushToken
            }
        }
    }
    
    public enum Update {
        public struct Request: Codable, Equatable, Sendable {
            public let system: System?
            public let osVersion: String?
            public let pushToken: String?
            
            public init(
                system: System?,
                osVersion: String?,
                pushToken: String?
            ) {
                self.system = system
                self.osVersion = osVersion
                self.pushToken = pushToken
            }
        }
    }

    public enum Detail {
        public struct Request: Codable, Equatable, Sendable {
            public init() {}
        }
        
        public struct Response: Codable, Equatable, Sendable {
            public let id: UUID
            public let system: System
            public let osVersion: String
            public let pushToken: String?
            
            public init(
                id: UUID,
                system: System,
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
