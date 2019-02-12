import UIKit

class MonstersViewController: UICollectionViewController {
  
  var monsters = [Monster]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Monsters"
    
    
    let url = Bundle.main.url(forResource: "monsters", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    
    self.monsters = json.keys.reduce(into: [Monster]()) { result, name in
      result.append(Monster(
        name: name,
        imageName: name.replacingOccurrences(of: " ", with: "-") + ".jpg",
        levels: [:],
        eliteLevels: [:]
      ))
    }
      .sorted(by: { $0.name < $1.name })
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return monsters.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MonsterCell", for: indexPath) as! MonsterCell
    
    let monster = monsters[indexPath.row]
    cell.nameLabel.text = monster.name
    cell.imageView.image =  UIImage(named: monster.imageName)
    
    return cell
  }
  
}
