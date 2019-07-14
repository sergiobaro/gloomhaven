import UIKit

class Label: UILabel {

  override func awakeFromNib() {
    super.awakeFromNib()

    self.font = UIFont.pirataOne(size: self.font.pointSize)
  }
}

class RegularLabel: UILabel {

  override func awakeFromNib() {
    super.awakeFromNib()

    self.font = UIFont.nyala(size: self.font.pointSize)
  }
}
