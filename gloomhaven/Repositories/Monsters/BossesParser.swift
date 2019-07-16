import Foundation

class BossesParser {

  func parse(json: [String: Any]) -> [Monster] {
    return json.keys
      .map({ name in
        return Monster(
          name: name,
          imageName: name.replacingOccurrences(of: " ", with: "-") + ".jpg",
          tokenCount: 1,
          levels: []
        )
      })
  }
}
