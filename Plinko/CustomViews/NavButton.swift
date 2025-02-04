import SwiftUI

struct NavButton: View {
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Capsule()
                .frame(height: 61)
                .foregroundStyle(AppColors.sandy.color)
                .overlay(
                    ZStack {
                        AppImages.pattern
                            .resizable()
                            .rotationEffect(.degrees(25))
                            .scaleEffect(0.65)
                            .offset(x: -AppSizes.screenWidth * 0.125, y: -5)
                        AppImages.pattern
                            .resizable()
                            .rotationEffect(.degrees(110))
                            .scaleEffect(0.65)
                            .offset(x: AppSizes.screenWidth * 0.30, y: 5)
                    }
                        .scaledToFill()
                        .blendMode(.overlay)
                )
                .clipShape(Capsule())
                .overlay(
                    Text(title)
                        .font(.custom(AppFonts.poppinsSemiBold.name, size: 40))
                        .foregroundStyle(AppColors.black.color)
                )
                .clipped()
        }
    }
}

#Preview {
    ZStack {
        BackgroundView()
            .ignoresSafeArea()
        NavButton(title: AppLabels.Buttons.next) {}
            .padding(.horizontal, 50)
            .offset(y: 100)
    }
}
