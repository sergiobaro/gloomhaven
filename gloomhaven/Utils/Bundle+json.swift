import Foundation

extension Bundle {

  func loadJson(named name: String) throws -> [String: Any]? {
    guard let url = Bundle.main.url(forResource: name, withExtension: "json") else {
      return nil
    }
    
    let data = try Data(contentsOf: url)
    return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
  }
}
