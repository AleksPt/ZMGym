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
                            .scaledToFill()
                            .blendMode(.overlay)
                            .rotationEffect(.degrees(25))
                            .scaleEffect(0.6)
                            .offset(x: -AppSizes.screenWidth * 0.2, y: -15)
                        AppImages.pattern
                            .resizable()
                            .scaledToFill()
                            .blendMode(.overlay)
                            .rotationEffect(.degrees(110))
                            .scaleEffect(0.6)
                            .offset(x: AppSizes.screenWidth * 0.35, y: 5)
                    }
                )
                .overlay(
                    Text(title)
                        .font(.custom(AppFonts.poppinsBlack.name, size: 40))
                        .foregroundStyle(AppColors.black.color)
                )
                .clipped()
        }

    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        NavButton(title: AppLabels.Buttons.next) {}
    }
}
