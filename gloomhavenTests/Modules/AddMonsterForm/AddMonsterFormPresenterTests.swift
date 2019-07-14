import XCTest
import SwiftyMocky
@testable import gloomhaven

class AddMonsterFormPresenterTests: XCTestCase {

  var viewMock: AddMonsterFormViewProtocolMock!
  var delegateMock: AddMonsterFormDelegateMock!
  var monster: Monster!

  var presenter: AddMonsterFormPresenter!

  override func setUp() {
    super.setUp()

    self.viewMock = AddMonsterFormViewProtocolMock()
    self.delegateMock = AddMonsterFormDelegateMock()

    self.monster = Monster(
      name: "m",
      imageName: "",
      tokenCount: 3,
      levels: []
    )

    self.presenter = AddMonsterFormPresenter(
      monster: self.monster,
      view: self.viewMock,
      delegate: self.delegateMock
    )
  }

  func test_viewIsReady() {
    self.presenter.viewIsReady()

    Verify(self.viewMock, .display(title: "m"))

    let expectedViewModel = AddMonsterFormViewModel(
      tokenCount: self.monster.tokenCount,
      monsters: [AddMonsterModel(isElite: false, selectedToken: 1, disabledTokens: [])],
      addMore: true
    )

    Verify(self.viewMock, .display(viewModel: .value(expectedViewModel)))
  }

  func test_addMonster() {
    self.presenter.viewIsReady()

    Verify(self.viewMock, .display(viewModel: .value(AddMonsterFormViewModel(
      tokenCount: self.monster.tokenCount,
      monsters: [
        AddMonsterModel(isElite: false, selectedToken: 1, disabledTokens: [])
      ],
      addMore: true
    ))))

    self.presenter.addMonster()

    Verify(self.viewMock, .display(viewModel: .value(AddMonsterFormViewModel(
      tokenCount: self.monster.tokenCount,
      monsters: [
        AddMonsterModel(isElite: false, selectedToken: 1, disabledTokens: [2]),
        AddMonsterModel(isElite: false, selectedToken: 2, disabledTokens: [1])
      ],
      addMore: true
    ))))
  }
}
