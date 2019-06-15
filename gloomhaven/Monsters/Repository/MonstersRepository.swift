import Foundation

class MonstersRepository {

  func loadMonsters() -> [Monster] {
    let json = self.loadJson(name: "monsters")

    return MonstersParser().parse(json: json)
  }

  private func loadJson(name: String) -> [String: Any] {
    let url = Bundle.main.url(forResource: "monsters", withExtension: "json")!

    do {
      let data = try Data(contentsOf: url)
      return try JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    } catch {
      print(error)
      return [:]
    }
  }

}
