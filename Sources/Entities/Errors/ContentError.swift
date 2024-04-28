import Foundation

public enum ContentError: String, IdentifiableError {
    
    case postNotFound = "post_not_found"
    case parentCommentNotFound = "parent_comment_not_found"
    case geocodingReturnedNoResults = "geocoding_no_results"
    case mediaToDownloadNotFound = "media_not_found"
    case challengeTokenNotFound = "challenge_token_not_found"
    case postContainsNoImages = "post_contains_no_images"
    case cannotFetchMedia = "cannot_fetch_media"
    
    public var identifier: String {
        rawValue
    }
    
    public var reason: String {
        switch self {
        case .postNotFound:
            "Post not found"
        case .parentCommentNotFound:
            "Parent comment not found"
        case .geocodingReturnedNoResults:
            "Geocoding returned no results"
        case .mediaToDownloadNotFound:
            "Media to download not found"
        case .challengeTokenNotFound:
            "Challenge token not found"
        case .postContainsNoImages:
            "Post contains no images"
        case .cannotFetchMedia:
            "Cannot fetch media from remote"
        }
    }
}
