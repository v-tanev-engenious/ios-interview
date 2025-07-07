import Foundation

enum NetworkError: Error, Equatable { case unreachable, badStatus }

protocol UserAPI: Sendable  { func fetch() async throws -> UserProfile }
protocol FeedAPI: Sendable  { func fetch() async throws -> Feed        }
protocol AdsAPI : Sendable  { func fetch() async throws -> AdsBanner   }

// MARK: mock implementations

struct MockUserAPI: UserAPI {
    func fetch() async throws -> UserProfile {
        fatalError("TODO: implement mock fetch (simulate latency & errors)")
    }
}

struct MockFeedAPI: FeedAPI {
    func fetch() async throws -> Feed {
        fatalError("TODO: implement mock fetch (simulate latency & errors)")
    }
}

struct MockAdsAPI: AdsAPI {
    func fetch() async throws -> AdsBanner {
        fatalError("TODO: implement mock fetch (simulate latency & errors)")
    }
}

// Shared instances the loader will use
let userAPI: UserAPI = MockUserAPI()
let feedAPI: FeedAPI = MockFeedAPI()
let adsAPI : AdsAPI  = MockAdsAPI()
