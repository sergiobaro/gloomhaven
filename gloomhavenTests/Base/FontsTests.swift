import XCTest
@testable import gloomhaven

class FontsTests: XCTestCase {

  func test_fonts() {
    XCTAssertNoThrow(UIFont.pirataOne(size: 20))
    XCTAssertNoThrow(UIFont.highTower(size: 20))
    XCTAssertNoThrow(UIFont.nyala(size: 20))
  }

}
