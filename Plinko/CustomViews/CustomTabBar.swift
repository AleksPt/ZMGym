import SwiftUI

enum Tab: String {
    case home
    case classes
    case sportBar
    case profile
    
    var tabIcon: Image {
        switch self {
        case .home:
            AppImages.Tab.home
        case .classes:
            AppImages.Tab.classes
        case .sportBar:
            AppImages.Tab.sportbar
        case .profile:
            AppImages.Tab.profile
        }
    }
}

struct CustomTabBar: View {
    @Binding var currentView: Tab
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentView) {
                HomeView()
                    .tag(Tab.home)
                    .tabItem {
                        TabBarItem(currentView: $currentView, tab: .home)
                    }
                ClassesView()
                    .tag(Tab.classes)
                    .tabItem {
                        TabBarItem(currentView: $currentView, tab: .classes)
                    }
                SportbarView()
                    .tag(Tab.sportBar)
                    .tabItem {
                        TabBarItem(currentView: $currentView, tab: .sportBar)
                    }
                ProfileView()
                    .tag(Tab.profile)
                    .tabItem {
                        TabBarItem(currentView: $currentView, tab: .profile)
                    }
            }
            .padding(.bottom, 50)
            
            HStack {
                TabBarItem(currentView: $currentView, tab: .home)
                Spacer()
                TabBarItem(currentView: $currentView, tab: .classes)
                Spacer()
                TabBarItem(currentView: $currentView, tab: .sportBar)
                Spacer()
                TabBarItem(currentView: $currentView, tab: .profile)
            }
            .clipShape(CustomClippedShape())
            .padding(.horizontal)
            .background(BlurView(style: .systemMaterial).ignoresSafeArea())
        }
    }
}

struct TabBarItem: View {
    @Binding var currentView: Tab
    let tab: Tab

    var body: some View {
        ZStack {
            if currentView == tab {
                Circle()
                    .fill(AppColors.sandy.color)
                    .frame(height: 50)
                    .blur(radius: 30)
            }
            VStack {
                Capsule()
                    .frame(width: 29, height: 5)
                    .foregroundStyle(.white)
                    .opacity(currentView == tab ? 0.5 : 0)
                
                tab.tabIcon
                    .resizable()
                    .opacity(currentView == tab ? 1 : 0.3)
                    .scaledToFit()
                    .padding(5)
                    .frame(height: 50, alignment: .center)
            }
        }
        .fixedSize()
        .onTapGesture {
            withAnimation {
                currentView = tab
            }
        }
    }
}

fileprivate struct CustomClippedShape: Shape {
    let offset: CGFloat = 100
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX - offset, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX + offset, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX + offset, y: offset))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY + offset))
        path.closeSubpath()
        
        return path
    }
}
