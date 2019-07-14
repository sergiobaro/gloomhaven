import UIKit

class MonsterDetailModule {

  static func make(monster: Monster) -> UINavigationController {
    let viewController = UIStoryboard(name: "MonsterDetail", bundle: nil)
      .instantiateInitialViewController() as! MonsterDetailViewController

    viewController.monster = monster

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .pageSheet
    
    return navController
  }
}
