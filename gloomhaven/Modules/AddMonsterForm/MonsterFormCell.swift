import UIKit

class MonsterFormCell: UITableViewCell {

  @IBOutlet private weak var normalButton: UIButton!
  @IBOutlet private weak var eliteButton: UIButton!
  @IBOutlet private weak var tokenSegmentedControl: UISegmentedControl!

  var numberOfTokens: Int {
    get {
      return self.tokenSegmentedControl.numberOfSegments
    }
    set {
      self.tokenSegmentedControl.removeAllSegments()
      for index in 1...newValue {
        self.tokenSegmentedControl.insertSegment(withTitle: "\(index)", at: index, animated: false)
      }
    }
  }

  var addMonsterModel: AddMonsterModel! {
    didSet {
      self.isElite = self.addMonsterModel.isElite
      self.selectedTokenNumber = self.addMonsterModel.tokenNumber
    }
  }

  private var isElite: Bool = false {
    didSet {
      self.normalButton.isSelected = !self.isElite
      self.eliteButton.isSelected = self.isElite
    }
  }

  private var selectedTokenNumber: Int {
    get {
      return self.tokenSegmentedControl.selectedSegmentIndex + 1
    }
    set {
      self.tokenSegmentedControl.selectedSegmentIndex = newValue - 1
    }
  }

  override func awakeFromNib() {
    super.awakeFromNib()

    self.selectionStyle = .none

    self.normalButton.layer.cornerRadius = 5.0
    self.normalButton.clipsToBounds = true
    self.normalButton.layer.borderColor = UIColor.black.cgColor
    self.normalButton.layer.borderWidth = 1.0
    self.normalButton.setTitleColor(.white, for: .selected)
    self.normalButton.setBackgroundImage(UIImage.color(.black), for: .selected)

    self.eliteButton.layer.cornerRadius = 5.0
    self.eliteButton.clipsToBounds = true
    self.eliteButton.layer.borderColor = UIColor.elite.cgColor
    self.eliteButton.layer.borderWidth = 1.0
    self.eliteButton.setBackgroundImage(UIImage.color(.elite), for: .selected)
  }

  // MARK: - Actions

  @IBAction func tapNormal() {
    self.addMonsterModel.isElite = false
    self.isElite = false
  }

  @IBAction func tapElite() {
    self.addMonsterModel.isElite = true
    self.isElite = true
  }

  @IBAction func tokenChangedValue() {
    self.addMonsterModel.tokenNumber = self.selectedTokenNumber
  }
}
