import XCTest
@testable import gloomhaven

class gloomhavenTests: XCTestCase {
  
  func test() {
    let url = Bundle.main.url(forResource: "monsters", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    
    let monsters = json.keys.reduce(into: [Monster]()) { result, name in
      result.append(Monster(
        name: name,
        imageName: name.replacingOccurrences(of: " ", with: "-") + ".jpg",
        levels: [:],
        eliteLevels: [:]
      ))
    }
    
    XCTAssertEqual(monsters.count, 34)
  }
  
}
