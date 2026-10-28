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
        NavigationView {
            VStack(spacing: 20) {
                // هيدر التطبيق
                HStack {
                    VStack(alignment: .leading) {
                        Text("VipeStore")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("متجر التطبيقات المخصص")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Image(systemName: "shield.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.blue)
                }
                .padding(.horizontal)

                // بطاقة ترحيبية
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(height: 140)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("أهلاً بك في VipeStore")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("حمل أدواتك وتطبيقاتك المفضلة بكل سهولة وأمان.")
                            .font(.body)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    .padding()
                }
                .padding(.horizontal)

                // قائمة التطبيقات أو الأدوات المتاحة
                List {
                    Section(header: Text("التطبيقات المميزة")) {
                        HStack {
                            Image(systemName: "hammer.fill")
                                .foregroundColor(.orange)
                                .font(.title2)
                            VStack(alignment: .leading) {
                                Text("أداة الجيلبريك والتخصيص")
                                    .fontWeight(.semibold)
                                Text("الإصدار 1.0 • جاهز للتحميل")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Button("تثبيت") {
                                // إجراء التثبيت
                            }
                            .buttonStyle(.borderedProminent)
                        }
                        .padding(.vertical, 4)
                    }
                }
                .listStyle(InsetGroupedListStyle())

                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}
