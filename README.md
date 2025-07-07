# 🛠 Dashboard Loader – Live-Coding Exercise

Welcome!
This tiny Swift project is the basis for a **live interview** for a Senior iOS Engineer role.
Your mission is to wire up the missing pieces (marked `TODO:` / `fatalError`) while we watch you think out loud.

---

## 1 · Problem Statement

A “Dashboard” screen must fetch **three independent resources**—`UserProfile`, `Feed`, and `AdsBanner`—and show them together.

### Requirements

| ID | Behaviour |
|----|-----------|
| R1 | **Parallel fetch** – start all three network calls at the same time. |
| R2 | **Fail-fast** – if any call throws, cancel the other two immediately. |
| R3 | **Global timeout** – if nothing finishes within **1 second**, cancel everything and throw `CancellationError`. |
| R4 | Return a fully-populated `Dashboard` DTO on success. |
| R5 | Keep the UI responsive (avoid blocking the main actor). |
| R6 | Keep the code easily **unit-testable** – feel free to refactor, inject dependencies, add protocols, etc., as long as `ContentView` still compiles and runs. |

> ⏱ We expect this to take about **45-60 min** of active coding.  \
> Extra time? Show or sketch unit tests for happy-path, fail-fast, and timeout cases.

---

## 2 · What’s pre-filled – and what you must implement

| File | Provided | Your TODO |
|------|----------|-----------|
| **`Models.swift`** | Data models (no edits needed) | – |
| **`ContentView.swift`** | UI scaffolding | (Optional) simplify the custom `Equatable` if you wish |
| **`NetworkLayer.swift`** | API protocols + empty mock structs | Implement each `fetch()` to simulate 100-150 ms latency and random failures (your choice of strategy) |
| **`DashboardLoader.swift`** | Function signatures & doc-comments | • Implement `withTimeout`<br>• Implement `loadDashboard` |

No additional third-party dependencies.

---

## 3 · Project Setup

1. **Clone** or download the repo (zip).
2. Open **`DashboardApp.xcodeproj`**
3. Build & run – the app compiles but crashes at the first `fatalError`.
4. Start filling in the `TODO:` blocks.

---

## 4 · Submission / Demo

During the session:

* **Code live** while sharing your screen.
* Narrate your thought process—architecture choices, cancellation strategy, testability tweaks.
* When you feel the implementation is solid, hit **Build & Run** and demo the result.
* If time remains, outline (or write) unit tests in a new test target.

---

Happy coding – we’re excited to see your approach!
