import SwiftUI

struct OnboardingModel: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let subtitle: String
}

extension OnboardingModel {
    static func generatedMockData() -> [OnboardingModel] {
        [
            OnboardingModel(
                image: AppImages.Onboarding.img1,
                title: AppLabels.Screens.Onboarding.Screen1.title,
                subtitle: AppLabels.Screens.Onboarding.Screen1.description
            ),
            OnboardingModel(
                image: AppImages.Onboarding.img2,
                title: AppLabels.Screens.Onboarding.Screen2.title,
                subtitle: AppLabels.Screens.Onboarding.Screen2.description
            ),
            OnboardingModel(
                image: AppImages.Onboarding.img3,
                title: AppLabels.Screens.Onboarding.Screen3.title,
                subtitle: AppLabels.Screens.Onboarding.Screen3.description
            ),
            OnboardingModel(
                image: AppImages.Onboarding.img4,
                title: AppLabels.Screens.Onboarding.Screen4.title,
                subtitle: AppLabels.Screens.Onboarding.Screen4.description
            ),
        ]
    }
}
