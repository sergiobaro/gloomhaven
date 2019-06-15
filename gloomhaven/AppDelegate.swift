import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    UINavigationBar.appearance().titleTextAttributes = [.font: UIFont.pirataOne(size: 20.0)]
    UITabBar.appearance().tintColor = .black
    UINavigationBar.appearance().tintColor = .black

    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = UIStoryboard(name: "Monsters", bundle: nil).instantiateInitialViewController()
    self.window?.makeKeyAndVisible()

    return true
  }

}
