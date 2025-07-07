import Foundation

// Helper that should throw CancellationError if `operation` exceeds `seconds`
func withTimeout<T: Sendable>(
    seconds: TimeInterval,
    operation: @escaping @Sendable () async throws -> T
) async throws -> T {
    // 👉 Candidate implements the timeout & cancellation logic.
    fatalError("TODO: implement withTimeout")
}

/// TASK FOR THE CANDIDATE:
///
///  • Fetch user, feed, and ads **in parallel**.
///  • Fail-fast: if any call throws, cancel the others.
///  • Cancel entire job if nothing finishes inside **1 s**.
///  • Return a populated `Dashboard` on success.
func loadDashboard() async throws -> Dashboard {
    // 👉 Candidate implements the loader using their `withTimeout`.
    // try await withTimeout(seconds: 1) { ... }
    fatalError("TODO: implement loadDashboard")
}
