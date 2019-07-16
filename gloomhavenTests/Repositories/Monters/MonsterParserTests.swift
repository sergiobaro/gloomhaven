import XCTest
@testable import gloomhaven

class MonsterParserTests: XCTestCase {

  let parser = MonstersParser()

  // MARK: - Tests

  func test_parseMonstersJson() {
    let json = try! Bundle.main.loadJson(named: "monsters")!

    let monsters = self.parser.parse(json: json)
    XCTAssertEqual(monsters.count, 34)
  }

  func test_monsterAncientArtillery() {
    let json = try! Bundle.main.loadJson(named: "monsters")!

    let monsters = self.parser.parse(json: json)

    let ancientArtillery = monsters.first(where: { $0.name == "Ancient Artillery" })
    let level4Elite = ancientArtillery!.levels[7].elite

    XCTAssertEqual(level4Elite.traits.count, 1)
  }

}
