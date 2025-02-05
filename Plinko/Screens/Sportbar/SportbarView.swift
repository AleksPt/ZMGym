import SwiftUI

struct SportbarView: View {
    @StateObject private var viewModel = SportbarViewModel()
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                ScreenHeaderView(
                    title: AppLabels.Screens.SportBar.title,
                    subtitle: AppLabels.Screens.SportBar.subtitle
                )
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 10) {
                        Section(
                            header: HStack {
                                Text(AppLabels.Screens.SportBar.Food.title.uppercased())
                                    .foregroundStyle(AppColors.lightGray.color)
                                    .font(.custom(AppFonts.poppinsSemiBold.name, size: 35))
                                
                                Spacer()
                            }
                        ) {
                            ForEach(viewModel.foods) { item in
                                Button {
                                    
                                } label: {
                                    item.smallImage.scaledToFit()
                                }
                            }
                        }
                        
                        Spacer()
                        
                        Section(
                            header: HStack {
                                Text(AppLabels.Screens.SportBar.Equipment.title.uppercased())
                                    .foregroundStyle(AppColors.lightGray.color)
                                    .font(.custom(AppFonts.poppinsSemiBold.name, size: 35))
                                
                                Spacer()
                            }
                        ) {
                            ForEach(viewModel.equipments) { item in
                                Button {
                                    
                                } label: {
                                    item.smallImage.scaledToFit()
                                }
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SportbarView()
}
