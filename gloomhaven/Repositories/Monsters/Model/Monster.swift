import Foundation

struct Monster {
  let name: String
  let imageName: String
  let tokenCount: Int
  let levels: [MonsterLevel]
}

struct MonsterLevel {
  let level: Int
  let normal: MonsterLevelStats
  let elite: MonsterLevelStats
  let inmmunities: [Effect]
}

struct MonsterLevelStats {
  let life: Int
  let move: Int
  let attack: Int
  let range: Int
  let traits: [MonsterTrait]
}

struct MonsterTrait {
  let effect: Effect
  let amount: Int?
  let range: Int?
}
