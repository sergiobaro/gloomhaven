import UIKit

class MonsterGalleryRouter {

  private weak var viewController: UIViewController?

  init(viewController: UIViewController) {
    self.viewController = viewController
  }

  // MARK: - Public

  func navigateToMonsterDetail(_ monster: Monster) {
    let monsterDetail = MonsterDetailModule.make(monster: monster)
    self.viewController?.navigationController?.pushViewController(monsterDetail, animated: true)
  }

  func navigateToAddMonster(_ monster: Monster, delegate: AddMonsterFormDelegate) {
    let addMonster = AddMonsterFormModule.make(monster: monster, delegate: delegate)
    self.viewController?.present(addMonster, animated: true)
  }
}
