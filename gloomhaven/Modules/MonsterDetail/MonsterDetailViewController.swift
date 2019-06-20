import UIKit

class MonsterDetailViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )
  }

  @objc func tapDone() {
    self.dismiss(animated: true)
  }
}
