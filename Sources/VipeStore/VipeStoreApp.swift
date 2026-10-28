import SwiftUI

@main
struct VipeStoreApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack(spacing: 15) {
                Image(systemName: "bolt.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
                Text("VipeStore")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("متجر التطبيقات قيد الانطلاق...")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
        }
    }
}
