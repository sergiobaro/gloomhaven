import Foundation

class AddMonsterFormViewModel {
  let numberOfTokens: Int
  var addMore: Bool
  var models: [AddMonsterModel]

  init(numberOfTokens: Int, addMore: Bool, models: [AddMonsterModel]) {
    self.numberOfTokens = numberOfTokens
    self.addMore = addMore
    self.models = models
  }
}

protocol AddMonsterFormViewProtocol: class {
  func display(title: String)
  func display(viewModel: AddMonsterFormViewModel)
}

class AddMonsterFormPresenter {

  private let monster: Monster
  private weak var view: AddMonsterFormViewProtocol?
  private weak var delegate: AddMonsterFormDelegate?

  private let viewModel: AddMonsterFormViewModel

  init(monster: Monster, view: AddMonsterFormViewProtocol, delegate: AddMonsterFormDelegate) {
    self.monster = monster
    self.view = view
    self.delegate = delegate

    self.viewModel = AddMonsterFormViewModel(
      numberOfTokens: self.monster.tokenCount,
      addMore: true,
      models: [.init(isElite: false, tokenNumber: 1)]
    )
  }

  func viewIsReady() {
    self.view?.display(title: self.monster.name)
    self.view?.display(viewModel: self.viewModel)
  }

  func addMonster() {
    self.viewModel.addMore = (self.viewModel.models.count < self.monster.tokenCount)
    self.viewModel.models.append(.init(isElite: false, tokenNumber: 1))
    self.view?.display(viewModel: self.viewModel)
  }

  func done() {
    self.delegate?.addMonsterFormDidAddMonsters([])
  }
}
