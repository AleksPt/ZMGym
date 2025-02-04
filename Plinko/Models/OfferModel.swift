import SwiftUI

struct OfferModel: Identifiable {
    let id = UUID()
    let image: Image
}

extension OfferModel {
    static func generatedMockData() -> [OfferModel] {
        [
            OfferModel(image: AppImages.Offer.offer1),
            OfferModel(image: AppImages.Offer.offer2),
            OfferModel(image: AppImages.Offer.offer3),
            OfferModel(image: AppImages.Offer.offer4),
        ]
    }
}
