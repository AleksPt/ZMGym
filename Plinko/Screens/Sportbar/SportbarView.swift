import SwiftUI
import BottomSheets

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
                                    selectedFoodItem = item
                                    isPresentedBottomSheet = true
                                } label: {
                                    item.smallImage.scaledToFit()
                                }
                                .bottomSheet(
                                    isPresented: $isPresentedBottomSheet,
                                    [.fraction(0.9)]
                                ) {
                                    SportBarDetail(sportbarData: selectedFoodItem)
                                        .bPresentationBackground(Color.black)
                                        .bPresentationCornerRadius(40)
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
                                    selectedFoodItem = item
                                    isPresentedBottomSheet = true
                                } label: {
                                    item.smallImage.scaledToFit()
                                }
                                .bottomSheet(
                                    isPresented: $isPresentedBottomSheet,
                                    [.fraction(0.9)]
                                ) {
                                    SportBarDetail(sportbarData: selectedFoodItem)
                                        .bPresentationBackground(Color.black)
                                        .bPresentationCornerRadius(40)
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
