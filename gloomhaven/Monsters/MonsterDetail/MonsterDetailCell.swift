import UIKit

class MonsterDetailCell: UITableViewCell {
  
  // header
  @IBOutlet weak var levelLabel: UILabel!
  
  // normal
  @IBOutlet weak var lifeNormalLabel: UILabel!
  @IBOutlet weak var moveNormalLabel: UILabel!
  @IBOutlet weak var attackNormalLabel: UILabel!
  @IBOutlet weak var rangeNormalLabel: UILabel!
  @IBOutlet weak var traitsNormalLabel: UILabel!
  
  // elite
  @IBOutlet weak var lifeEliteLabel: UILabel!
  @IBOutlet weak var moveEliteLabel: UILabel!
  @IBOutlet weak var attackEliteLabel: UILabel!
  @IBOutlet weak var rangeEliteLabel: UILabel!
  @IBOutlet weak var traitsEliteLabel: UILabel!
  
}
