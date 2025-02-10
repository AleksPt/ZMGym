import Foundation
import MapKit

struct LandmarkModel: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

extension LandmarkModel {
    static let plinko = LandmarkModel(
        name: AppLabels.Screens.Profile.address,
        coordinate: CLLocationCoordinate2D(
            latitude: 34.029839,
            longitude: -118.261069
        )
    )
}
