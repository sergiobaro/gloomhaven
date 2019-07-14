import UIKit

class MonsterDetailViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  private let presenter = MonsterDetailPresenter()

  var monster: Monster!

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = self.monster.name

    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )

    self.tableView.dataSource = self
    self.tableView.separatorInset = .zero
  }

  @objc func tapDone() {
    self.dismiss(animated: true)
  }
}

extension MonsterDetailViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.monster.levels.count * 2
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterDetailCell", for: indexPath) as! MonsterDetailCell

    cell.monsterImageView.image = UIImage(named: self.monster.imageName)

    let level = self.monster.levels[indexPath.row / 2]
    cell.levelLabel.text = String(level.level)

    let isElite = (indexPath.row % 2 != 0)
    let stats = isElite ? level.elite : level.normal

    cell.backgroundColor = isElite ? .elite : .clear

    cell.lifeLabel.text = String(stats.life)
    cell.moveLabel.text = String(stats.move)
    cell.attackLabel.text = String(stats.attack)
    cell.rangeLabel.text = String(stats.range)

    cell.traitsLabel.attributedText = self.presenter.traitsString(stats: stats, isElite: false, icons: true)

    return cell
  }
}
