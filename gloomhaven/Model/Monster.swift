import Foundation

enum MonsterNumber {
  case regular(Int)
  case modified(Int, String)
}

enum Effect {
  case bless
  case curse
  case disarm
  case immobilize
  case wound
  case muddle
  case poison
  case push
  case pull
  case pierce
  case addTarget
  case invisibiity
  case stun
  case strengthen
  case advantage
  case attackersDisadvantage
  case retaliate
  case shield
  case fly
}

struct Trait {
  let effect: Effect
  let amount: Int
  let range: Int?
}

struct MonsterLevel {
  let level: Int
  let life: MonsterNumber
  let movement: MonsterNumber
  let attack: MonsterNumber
  let immunities: [Effect]
  let traits: [Trait]
}

struct Monster {
  let name: String
  let imageName: String
  let levels: [Int: MonsterLevel]
}
