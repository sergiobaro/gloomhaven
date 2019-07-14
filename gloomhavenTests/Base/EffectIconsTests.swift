import XCTest
@testable import gloomhaven

class IconsTests: XCTestCase {

  func test_effectIcons() {
    XCTAssertNotNil(UIImage(named: Effect.retaliate.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.shield.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.target.rawValue))

    XCTAssertNotNil(UIImage(named: Effect.disarm.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.muddle.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.immobilize.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.curse.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.poison.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.wound.rawValue))
    XCTAssertNotNil(UIImage(named: Effect.pierce.rawValue))
  }

  func test_otherIcons() {
    XCTAssertNotNil(UIImage(named: "attack"))
    XCTAssertNotNil(UIImage(named: "life"))
    XCTAssertNotNil(UIImage(named: "move"))
    XCTAssertNotNil(UIImage(named: "range"))
  }

}
