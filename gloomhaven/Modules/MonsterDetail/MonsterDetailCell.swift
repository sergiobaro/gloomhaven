import UIKit

class MonsterDetailCell: UITableViewCell {

  @IBOutlet weak var monsterImageView: UIImageView!
  @IBOutlet weak var levelLabel: UILabel!

  @IBOutlet weak var lifeLabel: UILabel!
  @IBOutlet weak var moveLabel: UILabel!
  @IBOutlet weak var attackLabel: UILabel!
  @IBOutlet weak var rangeLabel: UILabel!

  @IBOutlet weak var traitsLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()

    self.monsterImageView.layer.borderColor = UIColor.black.cgColor
    self.monsterImageView.layer.borderWidth = 0.5
  }
  
}
