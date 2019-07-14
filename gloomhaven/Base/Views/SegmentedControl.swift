import UIKit

class SegmentedControl: UISegmentedControl {

  @IBInspectable var fontSize: CGFloat = 17.0 {
    didSet {
      self.setTitleTextAttributes([.font: UIFont.nyala(size: self.fontSize)], for: .normal)
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()

    self.tintColor = .black
  }

}
