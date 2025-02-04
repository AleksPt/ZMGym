import SwiftUI

enum Tab {
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

struct TabBar: View {
    @Binding var currentView: Tab
    
    var body: some View {
        HStack {
            TabBarItem(currentView: self.$currentView, tab: .home)
            Spacer()
            TabBarItem(currentView: self.$currentView, tab: .classes)
            Spacer()
            TabBarItem(currentView: self.$currentView, tab: .sportBar)
            Spacer()
            TabBarItem(currentView: self.$currentView, tab: .profile)
        }
        .clipShape(CustomClippedShape())
        .padding(.horizontal)
        .background(BlurView(style: .systemMaterial).ignoresSafeArea())
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
                    .frame(width: 48, height: 49, alignment: .center)
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
