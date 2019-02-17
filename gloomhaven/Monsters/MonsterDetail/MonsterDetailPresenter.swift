import Foundation
import UIKit

class MonsterDetailPresenter {
  
  private let tintableEffects: [Effect] = [.flying, .target, .shield, .retaliate]
  private let iconBounds = CGRect(x: -1, y: -3, width: 18, height: 18)
  private let smallIconBounds = CGRect(x: -1, y: -3, width: 14, height: 14)
  
  private let attributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Nyala", size: 18.0)!]
  private let smallAttributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Nyala", size: 14.0)!]
  
  func traitsString(monsterLevel: MonsterLevel, icons: Bool) -> NSAttributedString {
    let color = monsterLevel.type == .normal ? UIColor.black : UIColor.white
    
    return monsterLevel.traits
      .map({ trait -> NSAttributedString in
        let effectName = trait.effect.rawValue
        let result = NSMutableAttributedString(string: effectName.capitalized, attributes: self.attributes)
        
        if icons, let attachmentString = self.makeAttachmentString(effect: trait.effect, tintColor: color) {
          result.append(attachmentString)
        }
        
        if let amountString = self.makeAmountString(amount: trait.amount, icon: icons) {
          result.append(amountString)
        }
        
        if let rangeString = self.makeRangeString(range: trait.range, icon: icons, color: color) {
          result.append(rangeString)
        }
        
        result.addAttributes([.foregroundColor: color], range: NSRange(location: 0, length: result.string.count))
        
        return result
      })
      .reduce(into: NSMutableAttributedString(), { result, string in
        if !result.string.isEmpty {
          result.append(NSAttributedString(string: "\n"))
        }
        result.append(string)
      })
  }
  
  // MARK: - Private
  
  private func makeAmountString(amount: Int, icon: Bool) -> NSAttributedString? {
    guard amount > 0 else {
      return nil
    }
    
    let result = NSMutableAttributedString()
    
    if !icon {
      result.append(NSAttributedString(string: " ", attributes: self.attributes))
    }
    
    result.append(NSAttributedString(string: "\(amount)", attributes: self.attributes))
    
    return result
  }
  
  private func makeRangeString(range: Int?, icon: Bool, color: UIColor) -> NSAttributedString? {
    guard let range = range else {
      return nil
    }
    
    let result = NSMutableAttributedString()
    
    result.append(NSAttributedString(string: "\nRange", attributes: self.smallAttributes))
    if !icon {
      result.append(NSAttributedString(string: " ", attributes: self.smallAttributes))
    } else if let attachmentString = self.makeAttachmentString(imageName: "range", tintColor: color, bounds: self.smallIconBounds) {
      result.append(attachmentString)
    }
    result.append(NSAttributedString(string: String(range), attributes: self.smallAttributes))
    
    return result
  }
  
  private func makeAttachmentString(effect: Effect, tintColor: UIColor) -> NSAttributedString? {
    let color: UIColor? = self.tintableEffects.contains(effect) ? tintColor : nil
    
    return self.makeAttachmentString(imageName: effect.rawValue, tintColor: color, bounds: self.iconBounds)
  }
  
  private func makeAttachmentString(imageName: String, tintColor: UIColor?, bounds: CGRect) -> NSAttributedString? {
    guard let icon = UIImage(named: imageName) else {
      return nil
    }
    
    let attachment = NSTextAttachment()
    attachment.image = tintColor != nil ? icon.tinted(color: tintColor!) : icon
    attachment.bounds = bounds
    
    return NSAttributedString(attachment: attachment)
  }
  
}
