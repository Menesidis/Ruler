import ComposableArchitecture
import SwiftUI
import RulerPackage


@main
struct RulerApp: App {
    var body: some Scene {
        WindowGroup {
            let store = Store(initialState: MemoryFeature.State(items: Item.mocks)) {
                MemoryFeature()
              }
            MemoryBoard(store: store)
        }
    }
}
