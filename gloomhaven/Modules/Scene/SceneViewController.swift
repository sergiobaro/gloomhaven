import UIKit

class SceneViewController: UIViewController {

  override func awakeFromNib() {
    super.awakeFromNib()

    self.navigationItem.leftBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .cancel,
      target: self,
      action: #selector(tapCancel)
    )
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .add,
      target: self,
      action: #selector(tapAdd)
    )
  }

  // MARK: - Actions

  @objc func tapCancel() {
    self.dismiss(animated: true)
  }

  @objc func tapAdd() {
    let monsters = MonstersGalleryModule.makeMonsterSelection(delegate: self)
    self.present(monsters, animated: true)
  }
}

extension SceneViewController: MonstersGallerySelectionDelegate {
  func monstersGalleryDidSelect(monsters: [Monster]) {
    monsters.forEach({ print($0.name) })
  }
}
