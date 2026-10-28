import SwiftUI

@main
struct VipeStoreApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

// Main Interface View
struct MainView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // Apps & Sources Tab
            AppsView()
                .tabItem {
                    Label("Apps", systemImage: "square.grid.2x2.fill")
                }
                .tag(0)

            // Apple ID & Certificates Tab
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
                .tag(1)

            // Settings & Sources Tab
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
                .tag(2)
        }
        .accentColor(.blue) // VipeStore Brand Color
    }
}

// Apps View fetched from JSON Source
struct AppsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Featured Source (VipeStore)")) {
                    HStack {
                        Image(systemName: "play.rectangle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(10)
                            .foregroundColor(.red)
                        
                        VStack(alignment: .leading) {
                            Text("YouTube OLED")
                                .font(.headline)
                            Text("Custom dark mode YouTube client")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Sideloading & Installation Logic
                        }) {
                            Text("Install")
                                .bold()
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("VipeStore ⚡")
        }
    }
}

// Apple ID Management View
struct AccountView: View {
    @State private var appleID = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Sign in with Apple ID"), footer: Text("Your credentials are secure and only used to generate local sideloading certificates.")) {
                    TextField("Apple ID Email", text: $appleID)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                    SecureField("Password", text: $password)
                    
                    Button(action: {
                        // Authentication & Certificate Generation Logic
                    }) {
                        Text("Sign In & Generate Certificates")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .bold()
                            .foregroundColor(.white)
                    }
                    .listRowBackground(Color.blue)
                }
            }
            .navigationTitle("Developer Account")
        }
    }
}

// Settings & Sources Management View
struct SettingsView: View {
    @State private var sourceURL = "https://.../apps.json"

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Manage Sources")) {
                    TextField("Source JSON URL", text: $sourceURL)
                    Button("Add New Source") {
                        // Save source logic
                    }
                }
                
                Section(header: Text("About")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("1.0.0 Standalone")
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Developer")
                        Spacer()
                        Text("VipeStore Team")
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}
