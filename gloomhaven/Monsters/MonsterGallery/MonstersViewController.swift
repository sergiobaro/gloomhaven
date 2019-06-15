import UIKit

class MonstersViewController: UICollectionViewController {

  let presenter = MonstersPresenter()
  var monsters = [Monster]()
  var selectedMonster: Monster?

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = "Monsters"
    self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

    self.monsters = self.presenter.monsters()
    self.collectionView.reloadData()
  }

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
    self.selectedMonster = self.monsters[indexPath.row]
    self.performSegue(withIdentifier: "MonsterDetailSegue", sender: self)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? MonsterDetailViewController {
      destination.monster = self.selectedMonster
    }
  }

}
