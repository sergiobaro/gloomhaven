import XCTest
@testable import gloomhaven

class BossesParserTests: XCTestCase {

  let parser = BossesParser()

  // MARK: - Tests

  func test_parseMonstersJson() {
    let json = try! Bundle.main.loadJson(named: "bosses")!

    let monsters = self.parser.parse(json: json)
    XCTAssertEqual(monsters.count, 13)
  }
}
