import SwiftUI

struct FoodModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let fullImage: Image
    let smallImage: Image
}

extension FoodModel {
    static func generatedMockData() -> [FoodModel] {
        [
            FoodModel(
                title: AppLabels.Screens.SportBar.Food.WheyProtein.title,
                description: AppLabels.Screens.SportBar.Food.WheyProtein.description,
                fullImage: AppImages.Food.wheyProtein,
                smallImage: AppImages.Food.wheyProteinGrid
            ),
            FoodModel(
                title: AppLabels.Screens.SportBar.Food.ProteinBars.title,
                description: AppLabels.Screens.SportBar.Food.ProteinBars.description,
                fullImage: AppImages.Food.proteinBars,
                smallImage: AppImages.Food.proteinBarsGrid
            ),
            FoodModel(
                title: AppLabels.Screens.SportBar.Food.Ceratine.title,
                description: AppLabels.Screens.SportBar.Food.Ceratine.description,
                fullImage: AppImages.Food.creatine,
                smallImage: AppImages.Food.creatineGrid
            )
        ]
    }
}
