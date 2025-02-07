import Foundation

final class HomeViewModel: ObservableObject {
    let offers: [OfferModel] = OfferModel.generatedMockData()
}
