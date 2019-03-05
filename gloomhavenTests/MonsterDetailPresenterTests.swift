import XCTest
@testable import gloomhaven

class MonsterDetailPresenterTests: XCTestCase {
  
  let presenter = MonsterDetailPresenter()
  
  func test_wound() {
    let level = self.levelStats(with: [Trait(effect: .wound, amount: 0, range: nil)])
    
    let result = self.presenter.traitsString(stats: level, elite: false, icons: false)
    
    XCTAssertEqual(result.string, "Wound")
  }
  
  func test_pierce() {
    let level = self.levelStats(with: [Trait(effect: .pierce, amount: 3, range: nil)])
    
    let result = self.presenter.traitsString(stats: level, elite: false, icons: false)
    
    XCTAssertEqual(result.string, "Pierce 3")
  }
  
  func test_retaliate() {
    let level = self.levelStats(with: [Trait(effect: .retaliate, amount: 2, range: 2)])
    
    let result = self.presenter.traitsString(stats: level, elite: false, icons: false)
    
    XCTAssertEqual(result.string, "Retaliate 2\nRange 2")
  }
  
  func test_multi() {
    let level = self.levelStats(with: [
      Trait(effect: .flying, amount: 0, range: nil),
      Trait(effect: .retaliate, amount: 2, range: 2),
      Trait(effect: .shield, amount: 2, range: nil)
    ])
    
    let result = self.presenter.traitsString(stats: level, elite: false, icons: false)
    
    let expected = ["Flying", "Retaliate 2", "Range 2", "Shield 2"].joined(separator: "\n")
    XCTAssertEqual(result.string, expected)
  }
  
  // MARK: - Helpers
  
  func levelStats(with traits: [Trait]) -> MonsterLevelStats {
    return MonsterLevelStats(life: 0, move: 0, attack: 0, range: 0, traits: traits)
  }
  
}
