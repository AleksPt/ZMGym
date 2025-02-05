import SwiftUI

struct EquipmentModel: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let fullImage: Image
    let smallImage: Image
}

extension EquipmentModel {
    static func generatedMockData() -> [EquipmentModel] {
        [
            EquipmentModel(
                title: AppLabels.Screens.SportBar.Equipment.Kettlebell.title,
                description: AppLabels.Screens.SportBar.Equipment.Kettlebell.description,
                fullImage: AppImages.Equipment.kettlebel,
                smallImage: AppImages.Equipment.kettlebelGrid
            ),
            EquipmentModel(
                title: AppLabels.Screens.SportBar.Equipment.GymMat.title,
                description: AppLabels.Screens.SportBar.Equipment.GymMat.description,
                fullImage: AppImages.Equipment.gymMat,
                smallImage: AppImages.Equipment.gymMatGrid
            ),
            EquipmentModel(
                title: AppLabels.Screens.SportBar.Equipment.ElasticBand.title,
                description: AppLabels.Screens.SportBar.Equipment.ElasticBand.description,
                fullImage: AppImages.Equipment.elasticBand,
                smallImage: AppImages.Equipment.elasticBandGrid
            ),
            EquipmentModel(
                title: AppLabels.Screens.SportBar.Equipment.YellowGymBall.title,
                description: AppLabels.Screens.SportBar.Equipment.YellowGymBall.description,
                fullImage: AppImages.Equipment.yellowGymBall,
                smallImage: AppImages.Equipment.yellowGymBallGrid
            ),
            EquipmentModel(
                title: AppLabels.Screens.SportBar.Equipment.BlueGymBall.title,
                description: AppLabels.Screens.SportBar.Equipment.BlueGymBall.description,
                fullImage: AppImages.Equipment.blueGymBall,
                smallImage: AppImages.Equipment.blueGymBallGrid
            ),
            EquipmentModel(
                title: AppLabels.Screens.SportBar.Equipment.RedGymBall.title,
                description: AppLabels.Screens.SportBar.Equipment.RedGymBall.description,
                fullImage: AppImages.Equipment.redGymBall,
                smallImage: AppImages.Equipment.redGymBallGrid
            )
        ]
    }
}
