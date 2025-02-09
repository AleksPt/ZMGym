import SwiftUI

struct SportBarDetail: View {
    @Environment(\.dismiss) var dismiss
    let sportbarData: SportBarModel
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
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
                .padding()
                .toolbar {
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        HStack {
                            Spacer()
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundStyle(.white)
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SportBarDetail(sportbarData: SportBarModel(
        title: AppLabels.Screens.SportBar.Food.WheyProtein.title,
        description: AppLabels.Screens.SportBar.Food.WheyProtein.description,
        fullImage: AppImages.Food.wheyProtein,
        smallImage: AppImages.Food.wheyProteinGrid
    ))
    .background(Color.black)
}
