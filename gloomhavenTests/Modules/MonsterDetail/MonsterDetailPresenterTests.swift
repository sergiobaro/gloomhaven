import XCTest
@testable import gloomhaven

class MonsterDetailPresenterTests: XCTestCase {

  let presenter = MonsterDetailPresenter()

  func test_wound() {
    let level = self.level(with: [MonsterTrait(effect: .wound, amount: nil, range: nil)])

    let result = self.presenter.traitsString(stats: level.normal, isElite: false, includeIcons: false)

    XCTAssertEqual(result.string, "Wound")
  }

  func test_pierce() {
    let level = self.level(with: [MonsterTrait(effect: .pierce, amount: 3, range: nil)])

    let result = self.presenter.traitsString(stats: level.normal, isElite: false, includeIcons: false)

    XCTAssertEqual(result.string, "Pierce 3")
  }

  func test_retaliate() {
    let level = self.level(with: [MonsterTrait(effect: .retaliate, amount: 2, range: 2)])

    let result = self.presenter.traitsString(stats: level.normal, isElite: false, includeIcons: false)

    XCTAssertEqual(result.string, "Retaliate 2\nRange 2")
  }

  func test_multi() {
    let level = self.level(with: [
      MonsterTrait(effect: .flying, amount: nil, range: nil),
      MonsterTrait(effect: .retaliate, amount: 2, range: 2),
      MonsterTrait(effect: .shield, amount: 2, range: nil)
    ])

    let result = self.presenter.traitsString(stats: level.normal, isElite: false, includeIcons: false)

    let expected = ["Flying", "Retaliate 2", "Range 2", "Shield 2"].joined(separator: "\n")
    XCTAssertEqual(result.string, expected)
  }

  // MARK: - Helpers

  func level(with traits: [MonsterTrait]) -> MonsterLevel {
    return MonsterLevel(
      level: 0,
      normal: MonsterLevelStats(life: 0, move: 0, attack: 0, range: 0, traits: traits),
      elite: MonsterLevelStats(life: 0, move: 0, attack: 0, range: 0, traits: traits)
    )
  }

}
