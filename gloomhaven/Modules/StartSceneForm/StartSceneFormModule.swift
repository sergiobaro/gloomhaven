import UIKit

protocol StartSceneFormDelegate: class {
  func startSceneFormDidSelectLevel(_ level: Int)
}

class StartSceneFormModule {

  static func make(delegate: StartSceneFormDelegate) -> UINavigationController {
    let viewController = UIStoryboard(name: "StartSceneForm", bundle: nil)
      .instantiateInitialViewController() as! StartSceneFormViewController

    viewController.delegate = delegate

    let navController = UINavigationController(rootViewController: viewController)
    navController.modalPresentationStyle = .formSheet
    
    return navController
  }
  
}
