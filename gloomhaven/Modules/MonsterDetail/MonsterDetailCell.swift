import UIKit
import SnapKit

class MonsterDetailCell: UITableViewCell {

  static var height: CGFloat = 110

  @IBOutlet private weak var monsterImageView: UIImageView!
  @IBOutlet private weak var levelLabel: UILabel!

  private weak var normalStatsView: MonsterStatsView!
  private weak var eliteStatsView: MonsterStatsView!

  override func awakeFromNib() {
    super.awakeFromNib()

    self.monsterImageView.layer.borderColor = UIColor.black.cgColor
    self.monsterImageView.layer.borderWidth = 0.5

    if let normalStatsView = UIView.loadFromNib(type: MonsterStatsView.self) {
      self.addSubview(normalStatsView)
      normalStatsView.backgroundColor = .clear

      normalStatsView.snp.makeConstraints { maker in
        maker.bottom.top.equalToSuperview()
        maker.left.equalTo(self.monsterImageView.snp.right)
      }

      self.normalStatsView = normalStatsView
    }

    if let eliteStatsView = UIView.loadFromNib(type: MonsterStatsView.self) {
      self.addSubview(eliteStatsView)
      eliteStatsView.backgroundColor = .elite

      eliteStatsView.snp.makeConstraints { maker in
        maker.top.bottom.equalToSuperview()
        maker.right.equalToSuperview()
        maker.left.equalTo(self.normalStatsView.snp.right)
        maker.width.equalTo(self.normalStatsView)
      }

      self.eliteStatsView = eliteStatsView
    }
  }

  // MARK: - Public

  func fill(monster: Monster, level: Int) {
    self.monsterImageView.image = UIImage(named: monster.imageName)

    let level = monster.levels[level]
    self.fill(level: level)
  }

  func fill(level: MonsterLevel) {
    self.levelLabel.text = String(level.level)

    self.normalStatsView.fill(stats: level.normal)
    self.eliteStatsView.fill(stats: level.elite)
  }
  
}
