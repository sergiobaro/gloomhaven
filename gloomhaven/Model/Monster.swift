import Foundation

enum MonsterType: String {
  case normal
  case elite
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
