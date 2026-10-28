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
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    // هيدر المتجر
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("VipeStore")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Text("متجر التطبيقات المخصص")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "bolt.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.yellow)
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .clipShape(Circle())
                    }
                    .padding(.horizontal)
                    .padding(.top)

                    // بطاقة ترحيبية
                    VStack(alignment: .leading, spacing: 10) {
                        Text("مرحباً بك في عالم التثبيت")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("حمل أدواتك، ألعابك، وتطبيقاتك المفضلة بكل سهولة وأمان.")
                            .font(.body)
                            .foregroundColor(.white.opacity(0.9))
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(16)
                    .padding(.horizontal)

                    // قائمة التطبيقات
                    List {
                        Section(header: Text("الأدوات المتاحة")) {
                            HStack(spacing: 15) {
                                Image(systemName: "app.badge.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.blue)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("VipeStore Core")
                                        .font(.headline)
                                    Text("الإصدار 1.0 • متوافق مع النظام")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    // إجراء التثبيت
                                }) {
                                    Text("تثبيت")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                    .listStyle(InsetGroupedListStyle())

                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

