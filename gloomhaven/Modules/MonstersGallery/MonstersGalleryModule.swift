import UIKit

protocol MonstersGalleryDelegate: class {
  
}

class MonstersGalleryModule {

  static func make() -> UINavigationController {
    let viewController = UIStoryboard(name: "MonstersGallery", bundle: nil)
      .instantiateInitialViewController() as! MonstersGalleryViewController

    viewController.presenter = MonstersGalleryPresenter(
      delegate: nil
    )

    return UINavigationController(rootViewController: viewController)
  }

  static func makeMonsterSelection(delegate: MonstersGalleryDelegate) -> UINavigationController {
    let viewController = UIStoryboard(name: "MonstersGallery", bundle: nil)
      .instantiateInitialViewController() as! MonstersGalleryViewController

    viewController.presenter = MonstersGalleryPresenter(
      delegate: delegate
    )

    return UINavigationController(rootViewController: viewController)
  }
}
