import Foundation

class AddMonsterFormMapper {

  func viewModel(monster: Monster) -> AddMonsterFormViewModel {
    return AddMonsterFormViewModel(
      tokenCount: monster.tokenCount,
      monsters: [AddMonsterModel(isElite: false, selectedToken: 1, disabledTokens: [])],
      addMore: true
    )
  }

  func addMonster(to viewModel: AddMonsterFormViewModel) -> AddMonsterFormViewModel {
    let addMonster = AddMonsterModel(
      isElite: false,
      selectedToken: self.nextTokenAvailable(viewModel: viewModel),
      disabledTokens: viewModel.monsters.map { $0.selectedToken }
    )
    let newMonsters = viewModel.monsters.appending(addMonster)

    let viewModel = AddMonsterFormViewModel(
      tokenCount: viewModel.tokenCount,
      monsters: newMonsters,
      addMore: (newMonsters.count < viewModel.tokenCount)
    )

    return self.updateMonsters(on: viewModel)
  }

  func updateMonsters(on viewModel: AddMonsterFormViewModel) -> AddMonsterFormViewModel {
    let selectedTokens = viewModel.monsters.map { $0.selectedToken }

    var newMonsters = [AddMonsterModel]()
    for var monster in viewModel.monsters {
      let disabledTokens = selectedTokens.filter { $0 != monster.selectedToken }
      monster.disabledTokens = disabledTokens

      newMonsters.append(monster)
    }

    var result = viewModel
    result.monsters = newMonsters

    return result
  }

  private func nextTokenAvailable(viewModel: AddMonsterFormViewModel) -> Int {
    let disabledTokens = viewModel.monsters.map { $0.selectedToken }

    for token in 1 ..< viewModel.tokenCount {
      if !disabledTokens.contains(token) {
        return token
      }
    }

    return viewModel.tokenCount
  }
}
