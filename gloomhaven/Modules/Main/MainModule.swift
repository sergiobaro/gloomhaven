import UIKit

class MainModule {

  static func make() -> UIViewController {
    return UIStoryboard(name: "Main", bundle: nil)
      .instantiateInitialViewController()!
  }
}
