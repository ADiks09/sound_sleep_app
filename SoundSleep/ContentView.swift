import SwiftUI

internal struct ContentView: View {
    var body: some View {
        TabView {
            content(title: "Discover")
                .tabItem {
                    Label("Discover", systemImage: "moon.stars.fill")
                }
            content(title: "Composer")
                .tabItem {
                    Label("Composer", systemImage: "music.note")
                }
            content(title: "Profile")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor.Dark.secondary
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }

    private func content(title: String) -> some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text(title)
                        .foregroundStyle(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.Dark.primary)
            .navigationTitle(Text(title))
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
            appearance.backgroundColor = UIColor.Dark.primary
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().compactScrollEdgeAppearance = appearance
            UINavigationBar.appearance().compactAppearance = appearance
        }
    }
}

#Preview {
    ContentView()
}
