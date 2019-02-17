import Foundation

class MonstersRepository {
  
  func loadMonsters() -> [Monster] {
    let json = self.loadJson(name: "monsters")
    
    return json.keys
      .map({ name in
        let jsonMonster = json[name] as! [String: Any]
        let jsonLevels = jsonMonster["levels"] as! [[String: Any]]
        
        return Monster(
          name: name,
          imageName: name.replacingOccurrences(of: " ", with: "-") + ".jpg",
          tokenCount: jsonMonster["tokenCount"] as! Int,
          levels: jsonLevels.enumerated().flatMap({ arg -> [MonsterLevel] in
            let (index, json) = arg
            
            return self.mapMonsterLevels(level: index, json: json)
          })
        )
      })
  }
  
  private func mapMonsterLevels(level: Int, json: [String: Any]) -> [MonsterLevel] {
    let normal = self.mapMonsterLevel(level: level, type: .normal, json: json)
    let elite = self.mapMonsterLevel(level: level, type: .elite, json: json)
    
    return [normal, elite]
  }
  
  private func mapMonsterLevel(level: Int, type: MonsterType, json: [String: Any]) -> MonsterLevel {
    let jsonLevel = json[type.rawValue] as! [String: Any]
    
    return MonsterLevel(
        level: level,
        type: type,
        life: jsonLevel["life"] as! Int,
        move: jsonLevel["move"] as! Int,
        attack: jsonLevel["attack"] as! Int,
        range: jsonLevel["range"] as! Int,
        traits: []
    )
  }
  
  private func loadJson(name: String) -> [String: Any] {
    let url = Bundle.main.url(forResource: "monsters", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    return try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
  }
  
}
