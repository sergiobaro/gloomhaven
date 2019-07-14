import UIKit

class SceneModule {

  static func make(level: Int) -> UINavigationController {
    let viewController = UIStoryboard(name: "Scene", bundle: nil)
      .instantiateInitialViewController() as! SceneViewController

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .fullScreen
    
    return navController
  }
}
