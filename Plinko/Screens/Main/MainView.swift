import SwiftUI

struct MainView: View {
    @State private var currentView: Tab = .home
    
    init() {
//        let appearance = UITabBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        UITabBar.appearance().scrollEdgeAppearance = appearance

        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            CustomTabBar(currentView: $currentView)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    MainView()
}
