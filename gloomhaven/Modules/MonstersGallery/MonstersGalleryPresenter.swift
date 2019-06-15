import Foundation

class MonstersGalleryPresenter {

  private let repository = MonstersRepository()

  func monsters() -> [Monster] {
    return self.repository.loadMonsters()
      .sorted(by: { $0.name < $1.name })
  }

  func monsters(search: String) -> [Monster] {
    return self.monsters()
      .filter({ $0.name.lowercased().contains(search.lowercased()) })
  }

  func select(monster: Monster) {
    // todo: notify delegate
  }
}
