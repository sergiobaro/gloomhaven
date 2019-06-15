import Foundation

class MonstersGalleryPresenter {

  private weak var delegate: MonstersGalleryDelegate?
  private let repository = MonstersRepository()

  init(delegate: MonstersGalleryDelegate?) {
    self.delegate = delegate
  }

  func monsters() -> [Monster] {
    return self.repository.loadMonsters()
      .sorted(by: { $0.name < $1.name })
  }

  func monsters(search: String) -> [Monster] {
    return self.monsters()
      .filter({ $0.name.lowercased().contains(search.lowercased()) })
  }
}
