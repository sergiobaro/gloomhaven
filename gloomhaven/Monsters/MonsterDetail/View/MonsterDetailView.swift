import UIKit

class MonsterDetailView: UIView {
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var levelLabel: UILabel!
  @IBOutlet weak var monsterImageView: UIImageView!
  
  @IBOutlet weak var normalTraitsLabel: UILabel!
  @IBOutlet weak var normalStatsView: MonsterDetailStatsView!
  
  static func initFromNib() -> MonsterDetailView {
    return UINib(nibName: "MonsterDetailView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MonsterDetailView
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    self.clipsToBounds = true
    self.nameLabel.font = .pirataOne(size: 15.0)
    self.levelLabel.font = .pirataOne(size: 18.0)
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    self.layer.cornerRadius = self.bounds.width / 2 * 0.1
  }
  
}
