import Foundation

class MonsterTraitsParser {

  func parse(traits: [String]) -> [MonsterTrait] {
    guard !traits.isEmpty else {
      return []
    }

    return traits.map(self.map(trait:))
  }

  private func map(trait: String) -> MonsterTrait {
    let components = trait.split(separator: ",").map({ $0.trimmingCharacters(in: .whitespaces) })

    let effect = Effect(rawValue: components[0].lowercased())!
    var amount: Int?
    var range: Int?

    if components.count >= 2 {
      amount = Int(components[1])!
    }
    if components.count == 3 {
      range = Int(components[2])!
    }

    return MonsterTrait(effect: effect, amount: amount, range: range)
  }

}
