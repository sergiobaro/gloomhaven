import UIKit

extension UIView {

  static func loadFromNib<View: UIView>(type: View.Type) -> View? {
    return Bundle(for: type)
      .loadNibNamed(String(describing: type), owner: nil, options: nil)?
      .first as? View
  }
}
