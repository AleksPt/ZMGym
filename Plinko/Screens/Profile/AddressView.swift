import SwiftUI
import MapKit

struct AddressView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var viewModel = AddressViewModel()

    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                ScreenHeaderView(
                    title: AppLabels.Screens.Profile.title,
                    subtitle: AppLabels.Screens.Profile.subtitle
                )
                
                Spacer()
                
                Map(
                    coordinateRegion: $viewModel.region,
                    annotationItems: [viewModel.landmark]
                ) { landmark in
                    MapMarker(coordinate: landmark.coordinate, tint: .red)
                }
                .frame(height: AppSizes.screenWidth)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                
                Spacer()
                
                Text(viewModel.landmark.name.uppercased())
                    .foregroundStyle(.white)
                    .font(.custom(AppFonts.poppinsSemiBold.name, size: 25))
                    .lineLimit(3)
                    .minimumScaleFactor(0.5)
                
                Spacer()
                
                NavButton(title: AppLabels.Buttons.back) {
                    dismiss()
                }

            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    AddressView()
}
