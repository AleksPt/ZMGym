import SwiftUI

struct ClassesView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                ScreenHeaderView(
                    title: AppLabels.Screens.Classes.title,
                    subtitle: AppLabels.Screens.Classes.subtitle
                )
                Spacer()
                PickView(pickType: .yoga) {
                    
                }
                Spacer()
                PickView(pickType: .schedule) {
                    
                }
                Spacer()
                PickView(pickType: .gym) {
                    
                }
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ClassesView()
}
