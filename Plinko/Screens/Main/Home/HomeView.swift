import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var selectionTab = 0
    @State private var selectedOfferItem: OfferModel?
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                ScreenHeaderView(
                    title: AppLabels.Screens.Home.title,
                    subtitle: AppLabels.Screens.Home.titleDescription
                )
                .padding(.horizontal)
                
                Spacer()
                
                TabView(selection: $selectionTab) {
                    ForEach(viewModel.offers.indices, id:\.self) { index in
                        
                        let item = viewModel.offers[index]
                        
                        Button {
                            selectedOfferItem = item
                        } label: {
                            item.image
                                .scaledToFit()
                        }
                    }
                    .padding(.horizontal)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: AppSizes.screenHeight / 2)
                
                CustomPageTabView(selection: $selectionTab, numberOfTabs: viewModel.offers.count)
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(AppLabels.Screens.Home.subtitle.uppercased())
                            .foregroundStyle(AppColors.sandy.color)
                            .font(.custom(AppFonts.poppinsSemiBold.name, size: 25))
                        Text(AppLabels.Screens.Home.subtitleDescription.uppercased())
                            .font(.custom(AppFonts.poppinsRegular.name, size: 20))
                            .foregroundStyle(.white)
                    }
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
            .padding(.bottom, 30)
            .fullScreenCover(item: $selectedOfferItem, content: { item in
                OfferDetailScreen(offer: item)
            })
        }
    }
}

#Preview {
    HomeView()
}
