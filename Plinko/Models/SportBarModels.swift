import SwiftUI

struct SportBarModel: Identifiable {
    var id: UUID = UUID()
    var title: String
    var description: String
    var fullImage: Image
    var smallImage: Image
}

extension SportBarModel {
    static func generatedMockDataFood() -> [SportBarModel] {
        [
            SportBarModel(
                title: AppLabels.Screens.SportBar.Food.WheyProtein.title,
                description: AppLabels.Screens.SportBar.Food.WheyProtein.description,
                fullImage: AppImages.Food.wheyProtein,
                smallImage: AppImages.Food.wheyProteinGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Food.ProteinBars.title,
                description: AppLabels.Screens.SportBar.Food.ProteinBars.description,
                fullImage: AppImages.Food.proteinBars,
                smallImage: AppImages.Food.proteinBarsGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Food.Ceratine.title,
                description: AppLabels.Screens.SportBar.Food.Ceratine.description,
                fullImage: AppImages.Food.creatine,
                smallImage: AppImages.Food.creatineGrid
            )
        ]
    }
    
    static func generatedMockDataEquipment() -> [SportBarModel] {
        [
            SportBarModel(
                title: AppLabels.Screens.SportBar.Equipment.Kettlebell.title,
                description: AppLabels.Screens.SportBar.Equipment.Kettlebell.description,
                fullImage: AppImages.Equipment.kettlebel,
                smallImage: AppImages.Equipment.kettlebelGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Equipment.GymMat.title,
                description: AppLabels.Screens.SportBar.Equipment.GymMat.description,
                fullImage: AppImages.Equipment.gymMat,
                smallImage: AppImages.Equipment.gymMatGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Equipment.ElasticBand.title,
                description: AppLabels.Screens.SportBar.Equipment.ElasticBand.description,
                fullImage: AppImages.Equipment.elasticBand,
                smallImage: AppImages.Equipment.elasticBandGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Equipment.YellowGymBall.title,
                description: AppLabels.Screens.SportBar.Equipment.YellowGymBall.description,
                fullImage: AppImages.Equipment.yellowGymBall,
                smallImage: AppImages.Equipment.yellowGymBallGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Equipment.BlueGymBall.title,
                description: AppLabels.Screens.SportBar.Equipment.BlueGymBall.description,
                fullImage: AppImages.Equipment.blueGymBall,
                smallImage: AppImages.Equipment.blueGymBallGrid
            ),
            SportBarModel(
                title: AppLabels.Screens.SportBar.Equipment.RedGymBall.title,
                description: AppLabels.Screens.SportBar.Equipment.RedGymBall.description,
                fullImage: AppImages.Equipment.redGymBall,
                smallImage: AppImages.Equipment.redGymBallGrid
            )
        ]
    }
}
