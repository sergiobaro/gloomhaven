import UIKit

class MainViewController: UIViewController {

  @IBAction func tapStart() {
    // todo
  }

  @IBAction func tapMonsters() {
    let monstersGallery = MonstersGalleryModule.make()

    self.present(monstersGallery, animated: true)
  }
}
