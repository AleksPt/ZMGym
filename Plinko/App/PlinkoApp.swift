import SwiftUI

@main
struct PlinkoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SplashScreen()
            }
        }
    }
}
