import UIKit

class MonsterDetailViewController: UIViewController {

  private let presenter = MonsterDetailPresenter()

  var monster: Monster!

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = self.monster.name

    let monsterView = MonsterDetailView.initFromNib()
    monsterView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(monsterView)

    NSLayoutConstraint.activate([
      monsterView.widthAnchor.constraint(equalToConstant: 300),
      monsterView.heightAnchor.constraint(equalToConstant: 300),
      monsterView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      monsterView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
    ])

    monsterView.nameLabel.text = self.monster.name
    monsterView.monsterImageView.image = UIImage(named: self.monster.imageName)

    let level = self.monster.levels[0]
    let normalLevel = level.normal

    monsterView.levelLabel.text = String(level.level)

    monsterView.normalStatsView.lifeLabel.text = String(normalLevel.life)
    monsterView.normalStatsView.moveLabel.text = String(normalLevel.move)
    monsterView.normalStatsView.attackLabel.text = String(normalLevel.attack)
    monsterView.normalStatsView.rangeLabel.text = String(normalLevel.range)

    monsterView.normalTraitsLabel.attributedText = self.presenter.traitsString(
      stats: normalLevel,
      elite: false,
      icons: true
    )
  }

}
