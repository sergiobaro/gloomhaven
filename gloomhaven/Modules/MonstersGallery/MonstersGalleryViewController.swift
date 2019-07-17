import UIKit

class MonstersGalleryViewController: UICollectionViewController {

  var presenter: MonstersGalleryPresenter!
  var monsters = [Monster]()

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = "Monsters"

    self.setupNavigationBar()
    self.setupSearch()

    self.showAllMonsters()
  }

  // MARK: - Setup

  private func setupNavigationBar() {
    self.navigationItem.backBarButtonItem = UIBarButtonItem(
      title: "",
      style: .plain,
      target: nil,
      action: nil
    )
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )
  }

  private func setupSearch() {
    let search = UISearchController(searchResultsController: nil)
    search.obscuresBackgroundDuringPresentation = false
    search.searchResultsUpdater = self
    self.navigationItem.searchController = search
  }

  // MARK: - Actions

  @objc func tapDone() {
    self.dismiss(animated: true)
  }

  // MARK: - Private

  private func showAllMonsters() {
    self.monsters = self.presenter.monsters()
    self.collectionView.reloadData()
  }

  private func cancelSearch() {
    self.navigationItem.searchController?.isActive = false
  }
}

extension MonstersGalleryViewController { //  UICollectionViewDelegate, UICollectionViewDataSource

  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return monsters.count
  }

  override func collectionView(
    _ collectionView: UICollectionView,
    cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {

    let cell = collectionView.dequeue(MonsterCell.self, for: indexPath)!

    let monster = monsters[indexPath.row]
    cell.nameLabel.text = monster.name
    cell.imageView.image =  UIImage(named: monster.imageName)

    return cell
  }

  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let monster = self.monsters[indexPath.row]

    self.cancelSearch()

    self.presenter.select(monster: monster)
  }
}

extension MonstersGalleryViewController: UISearchResultsUpdating {

  func updateSearchResults(for searchController: UISearchController) {
    guard let text = searchController.searchBar.text, !text.isEmpty else {
      self.showAllMonsters()
      return
    }

    self.monsters = self.presenter.monsters(search: text)
    self.collectionView.reloadData()
  }
}
