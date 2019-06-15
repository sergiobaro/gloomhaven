import UIKit

protocol AddMonsterFormDelegate: class {
  func addMonsterFormDidAddMonsters(_ monsters: [AddMonsterModel])
}

class AddMonsterModel {
  var isElite: Bool
  var tokenNumber: Int

  init(isElite: Bool, tokenNumber: Int) {
    self.isElite = isElite
    self.tokenNumber = tokenNumber
  }
}

class AddMonsterFormModule {

  static func make(monster: Monster, delegate: AddMonsterFormDelegate) -> UINavigationController {
    let viewController = UIStoryboard(name: "AddMonsterForm", bundle: nil)
      .instantiateInitialViewController() as! AddMonsterFormViewController

    viewController.monster = monster
    viewController.delegate = delegate

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .formSheet

    return navController
  }
}
