import UIKit

class MonsterDetailModule {

  static func make(monster: Monster) -> UIViewController {
    let viewController = UIStoryboard(name: "MonsterDetail", bundle: nil)
      .instantiateInitialViewController() as! MonsterDetailViewController

    viewController.monster = monster

    return viewController
  }
}
