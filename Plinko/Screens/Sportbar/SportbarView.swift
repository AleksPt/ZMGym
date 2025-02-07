import SwiftUI

struct SportbarView: View {
    @StateObject private var viewModel = SportbarViewModel()
    @State private var isPresentedBottomSheet = false
    @State private var selectedFoodItem: SportBarModel? = nil
    
    private let columns = [
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
                
                ScrollView(showsIndicators: false) {
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
                                    selectedFoodItem = item
                                    isPresentedBottomSheet = true
                                } label: {
                                    item.smallImage.scaledToFit()
                                }
                                .sheet(isPresented: $isPresentedBottomSheet, content: {
                                    SportBarDetail(sportbarData: selectedFoodItem)
                                })
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
                                    selectedFoodItem = item
                                    isPresentedBottomSheet = true
                                } label: {
                                    item.smallImage.scaledToFit()
                                }
                                .sheet(isPresented: $isPresentedBottomSheet, content: {
                                    SportBarDetail(sportbarData: selectedFoodItem)
                                })
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    SportbarView()
}
