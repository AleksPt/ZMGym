import SwiftUI

struct OnboardingView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    @State private var selectionTab = 0
    @State private var isOpenMainView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                
                VStack {
                    TabView(selection: $selectionTab) {
                        ForEach(viewModel.onboardingData.indices, id: \.self) { index in
                            let item = viewModel.onboardingData[index]
                            
                            VStack {
                                item.image
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                Spacer()
                                HStack(alignment: .top) {
                                    VStack(alignment: .leading) {
                                        Text(item.title.uppercased())
                                            .font(.custom(AppFonts.poppinsSemiBold.name, size: 30))
                                            .foregroundStyle(AppColors.sandy.color)
                                            .minimumScaleFactor(0.5)
                                            .lineLimit(2)
                                        Text(item.subtitle.uppercased())
                                            .font(.custom(AppFonts.poppinsRegular.name, size: 15))
                                            .foregroundStyle(.white)
                                            .minimumScaleFactor(0.5)
                                            .lineLimit(3)
                                    }
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                                
                                Spacer()
                            }
                        }
                        .padding(.horizontal)
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    CustomPageTabView(
                        selection: $selectionTab,
                        numberOfTabs: viewModel.onboardingData.count
                    )
                    
                    NavButton(title: AppLabels.Buttons.next) {
                        withAnimation {
                            if selectionTab < viewModel.onboardingData.count - 1 {
                                selectionTab += 1
                            } else {
                                isOpenMainView = true
                            }
                        }
                    }
                    .padding()                
                    
                    NavigationLink(
                        destination: MainView(),
                        isActive: $isOpenMainView) {
                            EmptyView()
                        }
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
