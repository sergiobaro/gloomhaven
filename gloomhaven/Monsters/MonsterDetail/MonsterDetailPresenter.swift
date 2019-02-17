import Foundation

class MonsterDetailPresenter {
  
  func string(traits: [Trait]) -> String {
    return traits
      .map({ trait -> String in
        var result = trait.effect.rawValue.capitalized
        if trait.amount > 0 {
          result += " " + String(trait.amount)
        }
        if let range = trait.range {
          result += "\nRange \(range)"
        }
        return result
      })
      .joined(separator: "\n")
  }
  
}
