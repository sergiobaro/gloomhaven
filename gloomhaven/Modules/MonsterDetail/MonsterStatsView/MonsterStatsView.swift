import UIKit

class MonsterStatsView: UIView {

  @IBOutlet private weak var lifeLabel: UILabel!
  @IBOutlet private weak var moveLabel: UILabel!
  @IBOutlet private weak var attackLabel: UILabel!
  @IBOutlet private weak var rangeLabel: UILabel!
  @IBOutlet private weak var traitsLabel: UILabel!

  private let presenter = MonsterDetailPresenter()

  // MARK: - Public

  func fill(stats: MonsterLevelStats) {
    self.lifeLabel.text = String(stats.life)
    self.moveLabel.text = String(stats.move)
    self.attackLabel.text = String(stats.attack)
    self.rangeLabel.text = String(stats.range)

    self.traitsLabel.attributedText = self.presenter.traitsString(
      stats: stats,
      isElite: false,
      includeIcons: true
    )
  }

}
