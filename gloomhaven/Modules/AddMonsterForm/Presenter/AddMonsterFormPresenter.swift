import Foundation

struct AddMonsterFormViewModel: Equatable {
  let tokenCount: Int
  var monsters: [AddMonsterModel]
  var addMore: Bool
}

// sourcery: AutoMockable
protocol AddMonsterFormViewProtocol: class {
  func display(title: String)
  func display(viewModel: AddMonsterFormViewModel)
}

class AddMonsterFormPresenter {

  private let monster: Monster
  private weak var view: AddMonsterFormViewProtocol?
  private weak var delegate: AddMonsterFormDelegate?

  private let mapper: AddMonsterFormMapper
  private var viewModel: AddMonsterFormViewModel

  init(monster: Monster, view: AddMonsterFormViewProtocol, delegate: AddMonsterFormDelegate) {
    self.monster = monster
    self.view = view
    self.delegate = delegate

    self.mapper = AddMonsterFormMapper()
    self.viewModel = self.mapper.viewModel(monster: monster)
  }

  func viewIsReady() {
    self.view?.display(title: self.monster.name)
    self.view?.display(viewModel: self.viewModel)
  }

  func addMonster() {
    self.viewModel = self.mapper.addMonster(to: self.viewModel)

    self.view?.display(viewModel: self.viewModel)
  }

  func userChangedMonsters(_ monsters: [AddMonsterModel]) {
    self.viewModel.monsters = monsters
    self.viewModel = self.mapper.updateMonsters(on: self.viewModel)

    self.view?.display(viewModel: self.viewModel)
  }

  func done() {
    self.delegate?.addMonsterFormDidAddMonsters(self.viewModel.monsters)
  }
}
