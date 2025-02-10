import SwiftUI
import Combine

final class WebViewViewModel: ObservableObject {
    @Published var progress: Double = 0.0
    @Published var isLoading = true {
        didSet {
            if isLoading == false {
                stopTimer()
            }
        }
    }
    
    private var cancellable: AnyCancellable?
    private var timer: Timer?
    private var time = 5

    init() {
        cancellable = $isLoading
            .dropFirst()
            .filter { !$0 }
            .sink { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
                    guard let self else { return }
                    requestPermissionPush()
                }
            }
    }
    
    deinit {
        cancellable?.cancel()
    }
    
    func startTimer() {
        guard isLoading else { return }
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            
            if time > 0 {
                time -= 1
            } else {
                isLoading = false
            }
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func requestPermissionPush() {
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: authOptions) {_, _ in }
    }
}
