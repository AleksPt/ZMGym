import Foundation

final class OnboardingViewModel: ObservableObject {
    let onboardingData: [OnboardingModel] = OnboardingModel.generatedMockData()
    
}
