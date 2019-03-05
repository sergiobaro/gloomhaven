import UIKit

class MonsterDetailStatsView: UIView {
  
  @IBOutlet weak var lifeLabel: UILabel!
  @IBOutlet weak var moveLabel: UILabel!
  @IBOutlet weak var attackLabel: UILabel!
  @IBOutlet weak var rangeLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    self.backgroundColor = .clear
    self.alpha = 1.0
    
    self.lifeLabel.font = .nyala(size: 17.0)
    self.moveLabel.font = .nyala(size: 17.0)
    self.attackLabel.font = .nyala(size: 17.0)
    self.rangeLabel.font = .nyala(size: 17.0)
  }
}
