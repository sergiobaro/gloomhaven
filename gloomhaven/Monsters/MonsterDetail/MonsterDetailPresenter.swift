import Foundation
import UIKit

class MonsterDetailPresenter {
  
  func string(traits: [Trait]) -> NSAttributedString {
    let big: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Nyala", size: 18.0)!]
    let small: [NSAttributedString.Key: Any] = [.font: UIFont(name: "Nyala", size: 14.0)!]
    
    return traits
      .map({ trait -> NSAttributedString in
        let result = NSMutableAttributedString(string: trait.effect.rawValue.capitalized, attributes: big)
        if trait.amount > 0 {
          result.append(NSAttributedString(
            string: " \(trait.amount)",
            attributes: big)
          )
        }
        if let range = trait.range {
          result.append(NSAttributedString(
            string: "\nRange \(range)",
            attributes: small)
          )
        }
        return result
      })
      .reduce(NSMutableAttributedString(), { result, string in
        if !result.string.isEmpty {
          result.append(NSAttributedString(string: "\n"))
        }
        
        result.append(string)
        
        return result
      })
  }
  
}
