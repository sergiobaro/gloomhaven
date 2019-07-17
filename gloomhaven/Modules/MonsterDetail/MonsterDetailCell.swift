import UIKit
import SnapKit

class MonsterDetailCell: UITableViewCell {

  static var height: CGFloat = 110

  @IBOutlet private weak var imageBackgroundView: UIView!
  @IBOutlet private weak var monsterImageView: UIImageView!
  @IBOutlet private weak var imageForegroundView: UIView!
  @IBOutlet private weak var levelLabel: UILabel!

  private weak var normalStatsView: MonsterStatsView!
  private weak var eliteStatsView: MonsterStatsView!

  override func awakeFromNib() {
    super.awakeFromNib()

    self.imageForegroundView.layer.borderColor = UIColor.black.cgColor
    self.imageForegroundView.layer.borderWidth = 0.5

    if let normalStatsView = UIView.loadFromNib(type: MonsterStatsView.self) {
      self.addSubview(normalStatsView)
      normalStatsView.backgroundColor = .clear

      normalStatsView.snp.makeConstraints { maker in
        maker.bottom.top.equalToSuperview().inset(5.0)
        maker.left.equalTo(self.monsterImageView.snp.right).inset(-5.0)
      }

      normalStatsView.layer.borderColor = UIColor.black.cgColor
      normalStatsView.layer.borderWidth = 0.5

      self.normalStatsView = normalStatsView
    }

    if let eliteStatsView = UIView.loadFromNib(type: MonsterStatsView.self) {
      self.addSubview(eliteStatsView)
      eliteStatsView.backgroundColor = .elite

      eliteStatsView.snp.makeConstraints { maker in
        maker.top.bottom.equalToSuperview().inset(5.0)
        maker.right.equalToSuperview().inset(5.0)
        maker.left.equalTo(self.normalStatsView.snp.right).inset(-5.0)
        maker.width.equalTo(self.normalStatsView)
      }

      eliteStatsView.layer.borderColor = UIColor.black.cgColor
      eliteStatsView.layer.borderWidth = 0.5

      self.eliteStatsView = eliteStatsView
    }
  }

  // MARK: - Public

  func fill(monster: Monster, level: Int) {
    self.monsterImageView.image = UIImage(named: monster.imageName)

    let level = monster.levels[level]

    self.levelLabel.attributedText = NSAttributedString(
      string: String(level.level),
      attributes: [
        .strokeColor: UIColor.black,
        .strokeWidth: -1
      ]
    )

    self.normalStatsView.fill(stats: level.normal)
    self.eliteStatsView.fill(stats: level.elite)
  }
  
}
