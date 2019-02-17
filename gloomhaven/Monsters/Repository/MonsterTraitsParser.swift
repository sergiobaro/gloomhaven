import Foundation

class MonsterTraitsParser {
  
  func parse(traits: [String]) -> [Trait] {
    guard !traits.isEmpty else {
      return []
    }
    
    return traits.compactMap(self.map(trait:))
  }
  
  private func map(trait: String) -> Trait {
    let components = trait.split(separator: ",").map({ $0.trimmingCharacters(in: .whitespaces) })
    
    let effect = Effect(rawValue: components[0].lowercased())!
    var amount = 0
    var range: Int? = nil
    
    if components.count >= 2 {
      amount = Int(components[1])!
    }
    if components.count == 3 {
      range = Int(components[2])!
    }
    
    return Trait(effect: effect, amount: amount, range: range)
  }
  
}
