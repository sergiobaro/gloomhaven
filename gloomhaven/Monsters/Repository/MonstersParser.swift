import Foundation

class MonstersParser {

  private let traitsParser = MonsterTraitsParser()

  func parse(json: [String: Any]) -> [Monster] {
    return json.keys
      .map({ name in
        let jsonMonster = json[name] as! [String: Any]
        let jsonLevels = jsonMonster["levels"] as! [[String: Any]]

        return Monster(
          name: name,
          imageName: name.replacingOccurrences(of: " ", with: "-") + ".jpg",
          tokenCount: jsonMonster["tokenCount"] as! Int,
          levels: jsonLevels.enumerated().map({ arg -> MonsterLevel in
            let (index, json) = arg

            return self.mapMonsterLevel(level: index, json: json)
          })
        )
      })
  }

  // MARK: - Private

  private func mapMonsterLevel(level: Int, json: [String: Any]) -> MonsterLevel {
    let normal = self.mapStats(type: "normal", json: json)
    let elite = self.mapStats(type: "elite", json: json)

    return MonsterLevel(level: level, normal: normal, elite: elite)
  }

  private func mapStats(type: String, json: [String: Any]) -> MonsterLevelStats {
    let jsonLevel = json[type] as! [String: Any]

    return MonsterLevelStats(
      life: jsonLevel["life"] as! Int,
      move: jsonLevel["move"] as! Int,
      attack: jsonLevel["attack"] as! Int,
      range: jsonLevel["range"] as! Int,
      traits: traitsParser.parse(traits: jsonLevel["traits"] as! [String])
    )
  }

}
