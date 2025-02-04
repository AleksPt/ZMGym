import SwiftUI

struct OnboardingView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    @State private var selectionTab = 1
    
    var body: some View {
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
                                    Text(item.subtitle.uppercased())
                                        .font(.custom(AppFonts.poppinsRegular.name, size: 15))
                                        .foregroundStyle(.white)
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
                            selectionTab = 0
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    OnboardingView()
}
