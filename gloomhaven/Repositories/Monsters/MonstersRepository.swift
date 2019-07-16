import Foundation

class MonstersRepository {

  func loadMonsters() -> [Monster] {
    do {
      guard let json = try Bundle.main.loadJson(named: "monsters") else {
        return []
      }

      return MonstersParser().parse(json: json)
    } catch {
      print(error)
      return []
    }
  }

  func loadBosses() -> [Monster] {
    do {
      guard let json = try Bundle.main.loadJson(named: "bosses") else {
        return []
      }

      return BossesParser().parse(json: json)
    } catch {
      print(error)
      return []
    }
  }
}
