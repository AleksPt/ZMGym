import Foundation
import MapKit

final class AddressViewModel: ObservableObject {
    var landmark = LandmarkModel.plinko
    
    @Published var region = MKCoordinateRegion(
        center: LandmarkModel.plinko.coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.020, longitudeDelta: 0.020)
    )
}
