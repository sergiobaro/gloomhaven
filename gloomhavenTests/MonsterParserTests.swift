import XCTest
@testable import gloomhaven

class MonsterParserTests: XCTestCase {
  
  let parser = MonstersParser()
  
  func test_parseMonstersJson() {
    let url = Bundle.main.url(forResource: "monsters", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    
    let monsters = self.parser.parse(json: json)
    XCTAssertEqual(monsters.count, 34)
  }
  
}
