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
                                        .minimumScaleFactor(0.5)
                                        .lineLimit(2)
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
                .animation(.default, value: selectionTab)
                
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

struct CustomPageTabView: View {
    @Binding var selection: Int
    let numberOfTabs: Int

    var body: some View {
            HStack {
                ForEach(0..<numberOfTabs, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 2)
                        .fill(AppColors.sandy.color)
                        .opacity(index == selection ? 1 : 0.1)
                        .frame(width: 18, height: 18)
                }
            }
            .padding(.top, 10)
    }
}
