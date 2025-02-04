import SwiftUI

struct OfferDetailScreen: View {
    @Environment(\.dismiss) var dismiss
    let offer: OfferModel
    
    var body: some View {
        let countFooterImage = offer.detailFooterImages.count
        
        ZStack {
            BackgroundView()
            
            BlurView(style: .systemMaterial).ignoresSafeArea()
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Text(offer.title.uppercased())
                            .font(.custom(AppFonts.poppinsSemiBold.name, size: 30))
                            .foregroundStyle(AppColors.sandy.color)
                        
                        offer.detailCoverImage
                            .scaledToFit()
                        
                        Text(offer.description)
                            .font(.custom(AppFonts.poppinsLight.name, size: 15))
                            .foregroundStyle(.white)
                        
                        if countFooterImage == 1 {
                            offer.detailFooterImages[0].scaledToFit()
                        } else if countFooterImage > 1 && countFooterImage <= 3 {
                            VStack(spacing: 0) {
                                offer.detailFooterImages[0].scaledToFit()
                                HStack(spacing: 0) {
                                    offer.detailFooterImages[1].scaledToFit()
                                    offer.detailFooterImages[2].scaledToFit()
                                }
                            }
                        }
                        
                    }
                }
                
                NavButton(title: AppLabels.Buttons.back) {
                    dismiss()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    OfferDetailScreen(
        offer: OfferModel(
            image: AppImages.Offer.offer4,
            title: AppLabels.Screens.Home.Offers.Offer4.title,
            description: AppLabels.Screens.Home.Offers.Offer4.description,
            detailCoverImage: AppImages.Offer.Detail.Offer4.cover,
            detailFooterImages: [
                AppImages.Offer.Detail.Offer4.footer1,
                AppImages.Offer.Detail.Offer4.footer2,
                AppImages.Offer.Detail.Offer4.footer3
            ]
        )
    )
}
