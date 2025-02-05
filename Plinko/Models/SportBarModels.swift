import SwiftUI

class SportBarModel: Identifiable {
    var id: UUID
    var title: String
    var description: String
    var fullImage: Image
    var smallImage: Image
    
    init(id: UUID, title: String, description: String, fullImage: Image, smallImage: Image) {
        self.id = id
        self.title = title
        self.description = description
        self.fullImage = fullImage
        self.smallImage = smallImage
    }
}

class FoodModel: SportBarModel {
    override init(
        id: UUID = UUID(),
        title: String,
        description: String,
        fullImage: Image,
        smallImage: Image
    ) {
        super.init(
            id: id,
            title: title,
            description: description,
            fullImage: fullImage,
            smallImage: smallImage
        )
    }
}

class EquipmentModel: SportBarModel {
    override init(
        id: UUID = UUID(),
        title: String,
        description: String,
        fullImage: Image,
        smallImage: Image
    ) {
        super.init(
            id: id,
            title: title,
            description: description,
            fullImage: fullImage,
            smallImage: smallImage
        )
    }
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
