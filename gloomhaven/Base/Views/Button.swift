import UIKit

class Button: UIButton {

  override func awakeFromNib() {
    super.awakeFromNib()

    self.titleLabel?.font = UIFont.nyala(size: self.titleLabel!.font.pointSize)
    self.setTitleColor(.black, for: .normal)
    self.setTitleColor(.gray, for: .highlighted)
  }
}
