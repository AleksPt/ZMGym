import Foundation
import Firebase
import FacebookCore
import AppsFlyerLib
import FirebaseMessaging

class AppDelegate: NSObject, UIApplicationDelegate {
    
    override init() {
        super.init()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(applicationDidBecomeActive),
                                               name: UIApplication.didBecomeActiveNotification,
                                               object: nil)
    }
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        FirebaseDatabaseService.shared.isEnabledFacebook { result in
            if result == true {
                ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
            }
        }
        
        FirebaseDatabaseService.shared.isEnabledAppsflyer { result in
            if result == true {
                AppsFlyerLib.shared().appsFlyerDevKey = Constants.appsFlyerDevKey
                AppsFlyerLib.shared().appleAppID = Constants.appleAppID
                Constants.appsFlyerID = AppsFlyerLib.shared().getAppsFlyerUID()
            }
        }
        
        Messaging.messaging().delegate = self
        UNUserNotificationCenter.current().delegate = self
        
        application.registerForRemoteNotifications()
        
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        FirebaseDatabaseService.shared.isEnabledAppsflyer { result in
            if result == true {
                AppsFlyerLib.shared().start()
            }
        }
    }
    
    func application(_ application: UIApplication,
                     didReceiveRemoteNotification userInfo: [AnyHashable: Any]) async
    -> UIBackgroundFetchResult {
        
        return UIBackgroundFetchResult.newData
    }
}


extension AppDelegate: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        if let token = fcmToken {
            Constants.firebaseCloudMessagingToken = token
        }
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification) async
    -> UNNotificationPresentationOptions {
        return [[.badge, .banner, .sound]]
    }
    
    func application(_ application: UIApplication,
                     didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        Messaging.messaging().apnsToken = deviceToken;
    }
}

extension AppDelegate {
    static var preferredOrientation: UIInterfaceOrientationMask = [.all]
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.preferredOrientation
    }
}
