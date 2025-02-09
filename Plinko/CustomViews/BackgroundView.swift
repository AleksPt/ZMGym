import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    AppColors.purple.color,
                    AppColors.softPink.color
                ]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
        .overlay {
            AppImages.background
                .aspectRatio(contentMode: .fill)
                .blendMode(.luminosity)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
