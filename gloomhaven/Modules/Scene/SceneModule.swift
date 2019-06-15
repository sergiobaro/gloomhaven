import UIKit

class SceneModule {

  static func make(level: Int) -> UINavigationController {
    let viewController = UIStoryboard(name: "Scene", bundle: nil)
      .instantiateInitialViewController() as! SceneViewController

    return UINavigationController(rootViewController: viewController)
  }
}
