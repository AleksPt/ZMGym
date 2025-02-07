import SwiftUI

struct OfferDetailScreen: View {
    @Environment(\.dismiss) var dismiss
    let offer: OfferModel
    private let highlightedWords = AppLabels.Screens.Home.Offers.highlightedWords
    
    var body: some View {
        let countFooterImage = offer.detailFooterImages.count
        let formattedText = createFormattedText(
            from: offer.description,
            highlightedWords: highlightedWords
        )

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
                        
                        formattedText
                            .foregroundStyle(.white)
                            .font(.custom(AppFonts.poppinsLight.name, size: 15))
                        
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
    
    private func createFormattedText(
        from text: String,
        highlightedWords: [String]
    ) -> Text {
        var formattedText = Text("")
        var currentText = text
        
        for word in highlightedWords {
            if let range = currentText.range(of: word) {
                let before = String(currentText[..<range.lowerBound])
                formattedText = formattedText + Text(before)
                
                let highlighted = String(currentText[range])
                formattedText = formattedText + Text(highlighted).font(.custom(AppFonts.poppinsRegular.name, size: 20))
                
                currentText = String(currentText[range.upperBound...])
            }
        }
        
        formattedText = formattedText + Text(currentText)
        
        return formattedText
    }
}

#Preview {
    OfferDetailScreen(
        offer: OfferModel(
            image: AppImages.Offer.offer2,
            title: AppLabels.Screens.Home.Offers.Offer2.title,
            description: AppLabels.Screens.Home.Offers.Offer2.description,
            detailCoverImage: AppImages.Offer.Detail.Offer2.cover,
            detailFooterImages: [
                AppImages.Offer.Detail.Offer2.footer1,
                AppImages.Offer.Detail.Offer2.footer2,
                AppImages.Offer.Detail.Offer2.footer3
            ]
        )
    )
}
