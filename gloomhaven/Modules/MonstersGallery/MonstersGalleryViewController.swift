import UIKit

class MonstersGalleryViewController: UICollectionViewController {

  var presenter: MonstersGalleryPresenter!
  var monsters = [Monster]()

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = "Monsters"
    self.navigationItem.backBarButtonItem = UIBarButtonItem(
      title: "",
      style: .plain,
      target: nil,
      action: nil
    )

    self.navigationItem.leftBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .cancel,
      target: self,
      action: #selector(tapCancel)
    )

    let search = UISearchController(searchResultsController: nil)
    search.obscuresBackgroundDuringPresentation = false
    search.searchResultsUpdater = self
    self.navigationItem.searchController = search

    self.showAllMonsters()
  }

  // MARK: - Actions

  @objc func tapCancel() {
    self.dismiss(animated: true)
  }

  // MARK: - Private

  private func showAllMonsters() {
    self.monsters = self.presenter.monsters()
    self.collectionView.reloadData()
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
    let cell = collectionView.dequeueReusableCell(
      withReuseIdentifier: "MonsterCell",
      for: indexPath
    ) as! MonsterCell

    let monster = monsters[indexPath.row]
    cell.nameLabel.text = monster.name
    cell.imageView.image =  UIImage(named: monster.imageName)

    return cell
  }

  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    self.navigationItem.searchController?.isActive = false
    
    let monster = self.monsters[indexPath.row]
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
