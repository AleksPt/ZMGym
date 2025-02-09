import SwiftUI

struct ProfileView: View {
    @State private var isPresentedAddressScreen = false
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                ScreenHeaderView(
                    title: AppLabels.Screens.Profile.title,
                    subtitle: AppLabels.Screens.Profile.subtitle
                )
                
                Spacer()
                
                VStack(spacing: 0) {
                    AppImages.qr
                        .scaledToFit()
                        .scaleEffect(0.8)
                    
                    Text(AppLabels.Screens.Profile.scan.uppercased())
                        .foregroundStyle(.white)
                        .font(.custom(AppFonts.poppinsSemiBold.name, size: 25))
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                }
                
                Spacer()
                
                NavButton(title: AppLabels.Buttons.checkAddress) {
                    isPresentedAddressScreen = true
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
        .fullScreenCover(isPresented: $isPresentedAddressScreen) {
            AddressView()
        }
    }
}

#Preview {
    ProfileView()
}
