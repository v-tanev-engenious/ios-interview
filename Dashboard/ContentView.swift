import SwiftUI

struct ContentView: View {
    @State private var status: Status = .idle

    enum Status: Equatable {
        case idle
        case loading
        case success(Dashboard)
        case failure(Error)

        static func == (lhs: Status, rhs: Status) -> Bool {
            switch (lhs, rhs) {
            case (.idle,    .idle),
                (.loading, .loading):
                return true
            case let (.success(a), .success(b)):
                return a == b
            case (.failure, .failure):
                return true
            default:
                return false
            }
        }
    }

    var body: some View {
        VStack(spacing: 24) {
            Text("Dashboard Loader Demo")
                .font(.title.bold())

            Button {
                status = .loading
                Task {
                    do {
                        let dash = try await loadDashboard()
                        status = .success(dash)
                    } catch {
                        status = .failure(error)
                    }
                }
            } label: {
                Text("Fetch dashboard")
                    .padding(.horizontal, 32)
                    .padding(.vertical, 12)
                    .background(Color.blue.opacity(0.9))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            }
            .disabled(status == .loading)

            switch status {
            case .idle:
                Text("Tap the button to begin.").foregroundStyle(.secondary)
            case .loading:
                ProgressView().progressViewStyle(.circular)
            case .success(let dash):
                ScrollView {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("👤 User: \(dash.user.fullName)")
                        Text("📰 Articles: \(dash.feed.articles.count)")
                        Text("📢 Ads banner id: \(dash.ads.id)")
                    }
                }
            case .failure(let err):
                Text("Error: \(err.localizedDescription)")
                    .foregroundStyle(.red)
            }
        }
        .padding()
    }
}

#Preview { ContentView() }
