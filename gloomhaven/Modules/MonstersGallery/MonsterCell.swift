import UIKit

class MonsterCell: UICollectionViewCell {

  @IBOutlet weak var imageBackgroundView: UIView!
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()

    self.imageView.layer.borderColor = UIColor.black.cgColor
    self.imageView.layer.borderWidth = 0.5
  }
}
