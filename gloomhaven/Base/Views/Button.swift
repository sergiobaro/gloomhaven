import UIKit

class Button: UIButton {

  override func awakeFromNib() {
    super.awakeFromNib()

    self.titleLabel?.font = UIFont.nyala(size: 22.0)
    self.setTitleColor(.black, for: .normal)
    self.setTitleColor(.gray, for: .highlighted)
  }
}
