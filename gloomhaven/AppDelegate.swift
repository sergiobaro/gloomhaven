import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    Appearance.apply()

    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
    self.window?.makeKeyAndVisible()

    return true
  }

}
