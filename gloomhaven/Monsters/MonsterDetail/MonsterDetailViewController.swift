import UIKit

class MonsterDetailViewController: UIViewController {
  
  @IBOutlet private var monsterImageView: UIImageView!
  @IBOutlet private var tableView: UITableView!
  
  private let presenter = MonsterDetailPresenter()
  
  var monster: Monster!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.monsterImageView.contentMode = .scaleAspectFill
    self.monsterImageView.alpha = 0.3
    
    self.title = self.monster.name
    self.monsterImageView.image = UIImage(named: self.monster.imageName)
    
    self.tableView.backgroundView = self.monsterImageView
    self.tableView.dataSource = self
  }
  
}

extension MonsterDetailViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.monster.levels.count / 2
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterDetailCell", for: indexPath) as! MonsterDetailCell
    
    cell.levelLabel.text = String(indexPath.row)
    
    let index = (indexPath.row / 2)
    
    let levelNormal = self.monster.levels[index]
    cell.lifeNormalLabel.text = String(levelNormal.life)
    cell.moveNormalLabel.text = String(levelNormal.move)
    cell.attackNormalLabel.text = String(levelNormal.attack)
    cell.rangeNormalLabel.text = String(levelNormal.range)
    cell.traitsNormalLabel.text = self.presenter.string(traits: levelNormal.traits)
    
    let levelElite = self.monster.levels[index + 1]
    cell.lifeEliteLabel.text = String(levelElite.life)
    cell.moveEliteLabel.text = String(levelElite.move)
    cell.attackEliteLabel.text = String(levelElite.attack)
    cell.rangeEliteLabel.text = String(levelElite.range)
    cell.traitsEliteLabel.text = self.presenter.string(traits: levelElite.traits)
    
    return cell
  }
  
  
}
