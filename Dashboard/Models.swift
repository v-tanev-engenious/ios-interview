import Foundation

struct UserProfile: Codable, Equatable, Sendable {
    let id: Int
    let fullName: String
    let joinedAt: Date
}

struct Article: Codable, Equatable, Sendable {
    let id: Int
    let title: String
    let url: URL
}

struct Feed: Codable, Equatable, Sendable {
    let articles: [Article]
}

struct AdsBanner: Codable, Equatable, Sendable {
    let id: Int
    let imageURL: URL
    let destinationURL: URL
}

struct Dashboard: Equatable, Sendable {
    let user: UserProfile
    let feed: Feed
    let ads: AdsBanner
}
