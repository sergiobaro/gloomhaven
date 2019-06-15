import UIKit

class MainViewController: UIViewController {

  @IBAction func tapStart() {
    let startScene = StartSceneFormModule.make(delegate: self)
    self.present(startScene, animated: true)
  }

  @IBAction func tapMonsters() {
    let monstersGallery = MonstersGalleryModule.make()
    self.present(monstersGallery, animated: true)
  }
}

extension MainViewController: StartSceneFormDelegate {

  func startSceneFormDidSelectLevel(_ level: Int) {
    let scene = SceneModule.make(level: level)
    self.present(scene, animated: true)
  }
}
