import XCTest
@testable import gloomhaven

class MonsterTraitsParseTests: XCTestCase {

  let parser = MonsterTraitsParser()

  func test_empty() {
    let result = self.parser.parse(traits: [])

    XCTAssertEqual(result.count, 0)
  }

  func test_advantage() {
    let result = self.parser.parse(traits: ["ADVANTAGE"])

    XCTAssertEqual(result.count, 1)
    XCTAssertEqual(result.first?.effect, Effect.advantage)
    XCTAssertEqual(result.first?.range, nil)
  }

  func test_disadvantage() {
    let result = self.parser.parse(traits: ["DISADVANTAGE"])

    XCTAssertEqual(result.count, 1)
    XCTAssertEqual(result.first?.effect, Effect.disadvantage)
    XCTAssertEqual(result.first?.range, nil)
  }

  func test_wound() {
    let result = self.parser.parse(traits: ["WOUND"])

    XCTAssertEqual(result.count, 1)
    XCTAssertEqual(result.first?.effect, Effect.wound)
    XCTAssertEqual(result.first?.range, nil)
  }

  func test_pierce() {
    let result = self.parser.parse(traits: ["PIERCE, 3"])

    XCTAssertEqual(result.count, 1)
    XCTAssertEqual(result.first?.effect, Effect.pierce)
    XCTAssertEqual(result.first?.amount, 3)
    XCTAssertEqual(result.first?.range, nil)
  }

  func test_retaliate() {
    let result = self.parser.parse(traits: ["RETALIATE, 3, 2"])

    XCTAssertEqual(result.count, 1)
    XCTAssertEqual(result.first?.effect, Effect.retaliate)
    XCTAssertEqual(result.first?.amount, 3)
    XCTAssertEqual(result.first?.range, 2)
  }

}
