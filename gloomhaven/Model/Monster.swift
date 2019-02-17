import Foundation

enum MonsterType: String {
  case normal
  case elite
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
  let type: MonsterType
  let life: Int
  let move: Int
  let attack: Int
  let range: Int
  let traits: [Trait]
}

struct Monster {
  let name: String
  let imageName: String
  let tokenCount: Int
  let levels: [MonsterLevel]
}

// https://github.com/j13huang/gloomhaven/blob/master/src/lib/monsters/index.js
// https://github.com/any2cards/gloomhaven
