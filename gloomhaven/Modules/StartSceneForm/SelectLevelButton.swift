import UIKit

class SelectLevelButton: UIButton {

  override func awakeFromNib() {
    super.awakeFromNib()

    self.titleLabel?.font = UIFont.pirataOne(size: self.titleLabel!.font.pointSize)

    self.setTitleColor(.black, for: .normal)

    self.setTitleColor(.white, for: .selected)
    self.setBackgroundImage(UIImage.color(.black), for: .selected)

    self.layer.cornerRadius = 15.0
    self.clipsToBounds = true
  }
}
