import SwiftUI

struct OfferModel: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
    let detailCoverImage: Image
    let detailFooterImages: [Image]
}

extension OfferModel {
    static func generatedMockData() -> [OfferModel] {
        [
            OfferModel(
                image: AppImages.Offer.offer1,
                title: AppLabels.Screens.Home.Offers.Offer1.title,
                description: AppLabels.Screens.Home.Offers.Offer1.description,
                detailCoverImage: AppImages.Offer.Detail.Offer1.cover,
                detailFooterImages: [AppImages.Offer.Detail.Offer1.footer]
            ),
            OfferModel(
                image: AppImages.Offer.offer2,
                title: AppLabels.Screens.Home.Offers.Offer2.title,
                description: AppLabels.Screens.Home.Offers.Offer2.description,
                detailCoverImage: AppImages.Offer.Detail.Offer2.cover,
                detailFooterImages: [
                    AppImages.Offer.Detail.Offer2.footer1,
                    AppImages.Offer.Detail.Offer2.footer2,
                    AppImages.Offer.Detail.Offer2.footer3
                ]
            ),
            OfferModel(
                image: AppImages.Offer.offer3,
                title: AppLabels.Screens.Home.Offers.Offer3.title,
                description: AppLabels.Screens.Home.Offers.Offer3.description,
                detailCoverImage: AppImages.Offer.Detail.Offer3.cover,
                detailFooterImages: [
                    AppImages.Offer.Detail.Offer3.footer1,
                    AppImages.Offer.Detail.Offer3.footer2,
                    AppImages.Offer.Detail.Offer3.footer3
                ]
            ),
            OfferModel(
                image: AppImages.Offer.offer4,
                title: AppLabels.Screens.Home.Offers.Offer4.title,
                description: AppLabels.Screens.Home.Offers.Offer4.description,
                detailCoverImage: AppImages.Offer.Detail.Offer4.cover,
                detailFooterImages: [
                    AppImages.Offer.Detail.Offer4.footer1,
                    AppImages.Offer.Detail.Offer4.footer2,
                    AppImages.Offer.Detail.Offer4.footer3
                ]
            ),
        ]
    }
}
