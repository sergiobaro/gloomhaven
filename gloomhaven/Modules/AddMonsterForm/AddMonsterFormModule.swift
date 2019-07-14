import UIKit

// sourcery: AutoMockable
protocol AddMonsterFormDelegate: class {
  func addMonsterFormDidAddMonsters(_ monsters: [AddMonsterModel])
}

struct AddMonsterModel: Equatable {
  var isElite: Bool
  var selectedToken: Int
  var disabledTokens: [Int]
}

class AddMonsterFormModule {

  static func make(monster: Monster, delegate: AddMonsterFormDelegate) -> UINavigationController {
    let viewController = UIStoryboard(name: "AddMonsterForm", bundle: nil)
      .instantiateInitialViewController() as! AddMonsterFormViewController

    viewController.presenter = AddMonsterFormPresenter(
      monster: monster,
      view: viewController,
      delegate: delegate
    )

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .pageSheet

    return navController
  }
}
