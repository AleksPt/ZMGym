import SwiftUI

struct HomeScreen: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var selectionTab = 0
    @State private var isPresentedOfferDetailScreen = false
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(AppLabels.Screens.Home.title.uppercased())
                            .font(.custom(AppFonts.poppinsSemiBold.name, size: 35))
                        Text(AppLabels.Screens.Home.titleDescription.uppercased())
                            .font(.custom(AppFonts.poppinsRegular.name, size: 20))
                    }
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Spacer()
                
                TabView(selection: $selectionTab) {
                    ForEach(viewModel.offers.indices, id: \.self) { index in
                        let item = viewModel.offers[index]
                        
                        item.image
                            .scaledToFit()
                            .onTapGesture {
                                isPresentedOfferDetailScreen = true
                            }
                        .fullScreenCover(isPresented: $isPresentedOfferDetailScreen) {
                            OfferDetailScreen(offer: item)
                        }
                    }
                    .padding(.horizontal)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .frame(height: AppSizes.screenHeight / 1.75)
                
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
        }
    }
}

#Preview {
    HomeScreen()
}
