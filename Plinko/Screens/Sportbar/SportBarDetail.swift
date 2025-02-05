import SwiftUI

struct SportBarDetail: View {
    let sportbarData: SportBarModel!
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                sportbarData.fullImage
                    .scaledToFit()
                
                Group {
                    Text(sportbarData.title.uppercased()).font(.custom(AppFonts.poppinsRegular.name, size: 20)) + Text(sportbarData.description)
                }
                .font(.custom(AppFonts.poppinsRegular.name, size: 15))
                .foregroundStyle(AppColors.lightGray.color)
                
                Spacer(minLength: 25)
                
                Text(AppLabels.Screens.SportBar.note)
                    .font(.custom(AppFonts.poppinsRegular.name, size: 15))
                    .foregroundStyle(AppColors.lightGray.color)
            }
        }
    }
}

#Preview {
    SportBarDetail(sportbarData: FoodModel(
        title: AppLabels.Screens.SportBar.Food.WheyProtein.title,
        description: AppLabels.Screens.SportBar.Food.WheyProtein.description,
        fullImage: AppImages.Food.wheyProtein,
        smallImage: AppImages.Food.wheyProteinGrid
    ))
    .background(Color.black)
}
