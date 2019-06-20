import Foundation

class MonstersGalleryPresenter {

  private let router: MonsterGalleryRouter
  private let repository: MonstersRepository
  private let galleryMode: Bool
  private weak var selectionDelegate: MonstersGallerySelectionDelegate?

  init(
    router: MonsterGalleryRouter,
    repository: MonstersRepository,
    selectionDelegate: MonstersGallerySelectionDelegate?
  ) {
    self.router = router
    self.repository = repository
    self.selectionDelegate = selectionDelegate

    self.galleryMode = (selectionDelegate == nil)
  }

  func monsters() -> [Monster] {
    return self.repository.loadMonsters()
      .sorted(by: { $0.name < $1.name })
  }

  func monsters(search: String) -> [Monster] {
    return self.monsters()
      .filter({ $0.name.lowercased().contains(search.lowercased()) })
  }

  func select(monster: Monster) {
    if self.galleryMode {
      self.router.navigateToMonsterDetail(monster)
    } else {
      self.router.navigateToAddMonster(monster, delegate: self)
    }
  }
}

extension MonstersGalleryPresenter: AddMonsterFormDelegate {

  func addMonsterFormDidAddMonsters(_ monsters: [AddMonsterModel]) {

  }
}
