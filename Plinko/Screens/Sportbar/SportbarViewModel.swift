import Foundation

final class SportbarViewModel: ObservableObject {
    var foods: [FoodModel] = FoodModel.generatedMockData()
    var equipments: [EquipmentModel] = EquipmentModel.generatedMockData()
}
