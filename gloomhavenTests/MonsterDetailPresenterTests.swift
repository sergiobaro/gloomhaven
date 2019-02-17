import XCTest
@testable import gloomhaven

class MonsterDetailPresenterTests: XCTestCase {
  
  let presenter = MonsterDetailPresenter()
  
  func test_wound() {
    let traits = [Trait(effect: .wound, amount: 0, range: nil)]
    
    let result = self.presenter.string(traits: traits)
    
    XCTAssertEqual(result, "Wound")
  }
  
  func test_pierce() {
    let traits = [Trait(effect: .pierce, amount: 3, range: nil)]
    
    let result = self.presenter.string(traits: traits)
    
    XCTAssertEqual(result, "Pierce 3")
  }
  
  func test_retaliate() {
    let traits = [Trait(effect: .retaliate, amount: 2, range: 2)]
    
    let result = self.presenter.string(traits: traits)
    
    XCTAssertEqual(result, "Retaliate 2\nRange 2")
  }
  
  func test_multi() {
    let traits = [
      Trait(effect: .flying, amount: 0, range: nil),
      Trait(effect: .retaliate, amount: 2, range: 2),
      Trait(effect: .shield, amount: 2, range: nil)
    ]
    
    let result = self.presenter.string(traits: traits)
    
    let expected = ["Flying", "Retaliate 2", "Range 2", "Shield 2"].joined(separator: "\n")
    XCTAssertEqual(result, expected)
  }
  
}
