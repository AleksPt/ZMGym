import Foundation

final class SportbarViewModel: ObservableObject {
    @Published var foods: [SportBarModel] = SportBarModel.generatedMockDataFood()
    @Published var equipments: [SportBarModel] = SportBarModel.generatedMockDataEquipment()

}
