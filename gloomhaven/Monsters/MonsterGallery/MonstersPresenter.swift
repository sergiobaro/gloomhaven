import Foundation

class MonstersPresenter {
  
  private let repository = MonstersRepository()
  
  func monsters() -> [Monster] {
    return repository.loadMonsters()
      .sorted(by: { $0.name < $1.name })
  }
  
}
