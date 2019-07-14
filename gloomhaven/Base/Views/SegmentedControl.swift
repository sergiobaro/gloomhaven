import UIKit

class SegmentedControl: UISegmentedControl {

  @IBInspectable var fontSize: CGFloat = 17.0 {
    didSet {
      self.setTitleTextAttributes([
        .font: UIFont.nyala(size: self.fontSize)
      ], for: .normal)
      
      self.setTitleTextAttributes([
        .foregroundColor: UIColor.lightGray
      ], for: .disabled)
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()

    self.tintColor = .black
  }

}
