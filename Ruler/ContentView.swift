import SwiftUI
import RulerPackage

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .foregroundColor(Colors.customRed)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
