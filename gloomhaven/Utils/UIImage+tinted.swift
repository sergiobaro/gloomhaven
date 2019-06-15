import UIKit

extension UIImage {

  func tinted(color: UIColor) -> UIImage? {
    let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: self.size)

    UIGraphicsBeginImageContextWithOptions(rect.size, false, self.scale)

    let context = UIGraphicsGetCurrentContext()!
    self.draw(in: rect)
    context.setFillColor(color.cgColor)
    context.setBlendMode(.sourceAtop)
    context.fill(rect)

    guard let result = UIGraphicsGetImageFromCurrentImageContext() else {
      return nil
    }

    UIGraphicsEndImageContext()
    return result
  }

}
