import UIKit

protocol MonstersGalleryDelegate: class {
  func monstersGalleryDidSelect(monster: Monster)
  func monstersGalleryDidCancel()
}

class MonstersGalleryModule {

  static func make() -> UIViewController {
    let viewController = UIStoryboard(name: "MonstersGallery", bundle: nil)
      .instantiateInitialViewController() as! MonstersGalleryViewController

    viewController.presenter = MonstersGalleryPresenter()

    return UINavigationController(rootViewController: viewController)
  }
}
