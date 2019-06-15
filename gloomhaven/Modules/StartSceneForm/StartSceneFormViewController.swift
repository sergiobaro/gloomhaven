import UIKit

class StartSceneFormViewController: UIViewController {

  @IBOutlet var buttons: [UIButton]!

  weak var delegate: StartSceneFormDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()

    self.navigationItem.leftBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .cancel,
      target: self,
      action: #selector(tapCancel)
    )

    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )

    self.buttons.forEach({
      $0.addTarget(self, action: #selector(tapLevelButton(button:)), for: .touchUpInside)
    })

    self.buttons.first?.isSelected = true
  }

  // MARK: - Actions

  @objc func tapCancel() {
    self.dismiss(animated: true)
  }

  @objc func tapDone() {
    let level = self.buttons
      .first(where: { $0.isSelected })
      .map({ $0.titleLabel!.text! })
      .map({ Int($0)! })

    self.dismiss(animated: true) {
      self.delegate?.startSceneFormDidSelectLevel(level!)
    }
  }

  @objc func tapLevelButton(button: UIButton) {
    button.isSelected = true

    self.buttons
      .filter({ $0 !== button })
      .forEach({ $0.isSelected = false })
  }
}
