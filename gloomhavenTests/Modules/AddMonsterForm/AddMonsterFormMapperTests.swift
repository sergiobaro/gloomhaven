import XCTest
@testable import gloomhaven

class AddMonsterFormMapperTests: XCTestCase {

  var monster: Monster!
  var mapper: AddMonsterFormMapper!

  override func setUp() {
    super.setUp()

    self.monster = Monster(name: "monster", imageName: "", tokenCount: 4, levels: [])
    self.mapper = AddMonsterFormMapper()
  }

  func test_addMore() {
    var result = self.mapper.viewModel(monster: self.monster)

    for _ in 1 ..< self.monster.tokenCount {
      XCTAssertTrue(result.addMore)
      result = self.mapper.addMonster(to: result)
    }

    XCTAssertFalse(result.addMore)
  }

  func test_initialViewModel() {
    let result = self.mapper.viewModel(monster: self.monster)

    XCTAssertEqual(result.tokenCount, self.monster.tokenCount)
    XCTAssertEqual(result.monsters.count, 1)
    XCTAssertTrue(result.addMore)

    let model = result.monsters[0]
    XCTAssertFalse(model.isElite)
    XCTAssertEqual(model.selectedToken, 1)
    XCTAssertEqual(model.disabledTokens, [])
  }

  func test_addMonster_addSecondMonster() {
    let viewModel = self.mapper.viewModel(monster: self.monster)

    let result = self.mapper.addMonster(to: viewModel)

    XCTAssertEqual(result.monsters.count, 2)

    let first = result.monsters[0]
    XCTAssertFalse(first.isElite)
    XCTAssertEqual(first.selectedToken, 1)
    XCTAssertEqual(first.disabledTokens, [2])

    let second = result.monsters[1]
    XCTAssertFalse(second.isElite)
    XCTAssertEqual(second.selectedToken, 2)
    XCTAssertEqual(second.disabledTokens, [1])
  }

  func test_addMonster_addThirdMonster() {
    var viewModel = self.mapper.viewModel(monster: self.monster)
    viewModel = self.mapper.addMonster(to: viewModel)

    let result = self.mapper.addMonster(to: viewModel)

    XCTAssertEqual(result.monsters.count, 3)

    let first = result.monsters[0]
    XCTAssertFalse(first.isElite)
    XCTAssertEqual(first.selectedToken, 1)
    XCTAssertEqual(first.disabledTokens, [2, 3])

    let second = result.monsters[1]
    XCTAssertFalse(second.isElite)
    XCTAssertEqual(second.selectedToken, 2)
    XCTAssertEqual(second.disabledTokens, [1, 3])

    let third = result.monsters[2]
    XCTAssertFalse(third.isElite)
    XCTAssertEqual(third.selectedToken, 3)
    XCTAssertEqual(third.disabledTokens, [1, 2])
  }

  func test_addMonster_addSecondMonster_selectedTokenChanged() {
    let viewModel = AddMonsterFormViewModel(
      tokenCount: self.monster.tokenCount,
      monsters: [AddMonsterModel(isElite: false, selectedToken: 2, disabledTokens: [])],
      addMore: true
    )

    let result = self.mapper.addMonster(to: viewModel)

    let second = result.monsters[1]
    XCTAssertFalse(second.isElite)
    XCTAssertEqual(second.selectedToken, 1)
    XCTAssertEqual(second.disabledTokens, [2])
  }

  func test_updateMonsters_lastMonsterDeleted() {
    var result = self.mapper.viewModel(monster: self.monster)

    for _ in 1 ..< self.monster.tokenCount {
      result = self.mapper.addMonster(to: result)
    }
    XCTAssertFalse(result.addMore)

    var monsters = result.monsters
    monsters.remove(at: monsters.count - 1)
    result.monsters = monsters

    result = self.mapper.updateMonsters(on: result)

    XCTAssertTrue(result.addMore)
  }
}
