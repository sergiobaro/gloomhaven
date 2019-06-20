import UIKit

protocol MonstersGallerySelectionDelegate: class {
  
}

class MonstersGalleryModule {

  static func make() -> UINavigationController {
    let viewController = UIStoryboard(name: "MonstersGallery", bundle: nil)
      .instantiateInitialViewController() as! MonstersGalleryViewController

    viewController.presenter = MonstersGalleryPresenter(
      router: MonsterGalleryRouter(viewController: viewController),
      repository: MonstersRepository(),
      selectionDelegate: nil
    )

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .pageSheet

    return navController
  }

  static func makeMonsterSelection(delegate: MonstersGallerySelectionDelegate) -> UINavigationController {
    let viewController = UIStoryboard(name: "MonstersGallery", bundle: nil)
      .instantiateInitialViewController() as! MonstersGalleryViewController

    viewController.presenter = MonstersGalleryPresenter(
      router: MonsterGalleryRouter(viewController: viewController),
      repository: MonstersRepository(),
      selectionDelegate: delegate
    )

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .pageSheet

    return navController
  }
}
