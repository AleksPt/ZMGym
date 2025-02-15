import SwiftUI

struct SplashScreen: View {
    @StateObject private var splashViewModel = SpashScreenViewModel()
    
    var body: some View {
        switch splashViewModel.viewState {
        case .loading:
            withAnimation {
                LoaderView()
            }
        case .game:
            OnboardingView()
                .onAppear {
                    splashViewModel.setOrientationOnlyPortrait()
                }
        case .webview(let url):
            WebView(url: url)
        }
    }
}

#Preview {
    SplashScreen()
}
