import Foundation

final class SportbarViewModel: ObservableObject {
    let foods: [SportBarModel] = FoodModel.generatedMockData()
    let equipments: [SportBarModel] = EquipmentModel.generatedMockData()
}
