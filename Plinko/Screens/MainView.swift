import SwiftUI

struct MainView: View {
    @State private var currentView: Tab = .home

    var body: some View {
            ZStack {
                BackgroundView()
                
                VStack {
                    switch currentView {
                    case .home:
                        HomeView()
                    case .classes:
                        ClassesView()
                    case .sportBar:
                        SportbarView()
                    case .profile:
                        ProfileView()
                    }
                                        
                    CustomTabBar(currentView: $currentView)
                }
            }
            .navigationBarHidden(true)
    }
}

#Preview {
    MainView()
}
