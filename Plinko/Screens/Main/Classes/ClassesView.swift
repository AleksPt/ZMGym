import SwiftUI

struct ClassesView: View {
    @State var yoga: ClassModel? = nil
    @State var gym: ClassModel? = nil
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                ScreenHeaderView(
                    title: AppLabels.Screens.Classes.title,
                    subtitle: AppLabels.Screens.Classes.subtitle
                )
                Spacer()
                
                NavigationLink {
                    ClassesDetailView(classModel: $yoga)
                } label: {
                    AppImages.yoga.scaledToFit()
                }
                
                Spacer()
                
                NavigationLink {
                    ClassesDetailView(classModel: $yoga)
                } label: {
                    AppImages.schedule.scaledToFit()
                }
                
                Spacer()
                
                NavigationLink {
                    ClassesDetailView(classModel: $gym)
                } label: {
                    AppImages.gym.scaledToFit()
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    ClassesView()
}
