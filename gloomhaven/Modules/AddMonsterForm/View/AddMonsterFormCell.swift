import UIKit

protocol AddMonsterFormCellDelegate: class {

  func addMonsterFormCell(_ cell: AddMonsterFormCell, didChangeModel model: AddMonsterModel)

}

class AddMonsterFormCell: UITableViewCell {
  private struct Style {
    static let segmentWidth: CGFloat = 30.0
  }

  @IBOutlet private weak var normalButton: UIButton!
  @IBOutlet private weak var eliteButton: UIButton!
  @IBOutlet private weak var tokenSegmentedControl: UISegmentedControl!

  weak var delegate: AddMonsterFormCellDelegate?

  var numberOfTokens: Int {
    get {
      return self.tokenSegmentedControl.numberOfSegments
    }
    set {
      self.tokenSegmentedControl.removeAllSegments()
      for index in 0..<newValue {
        self.tokenSegmentedControl.insertSegment(withTitle: "\(index + 1)", at: index, animated: false)
        self.tokenSegmentedControl.setWidth(Style.segmentWidth, forSegmentAt: index)
      }
    }
  }

  var addMonsterModel: AddMonsterModel! {
    didSet {
      self.isElite = self.addMonsterModel.isElite
      self.selectedToken = self.addMonsterModel.selectedToken

      for index in 0..<self.numberOfTokens {
        let enabled = !self.addMonsterModel.disabledTokens.contains(index + 1)
        self.tokenSegmentedControl.setEnabled(enabled, forSegmentAt: index)
      }
    }
  }

  private var isElite: Bool = false {
    didSet {
      self.normalButton.isSelected = !self.isElite
      self.eliteButton.isSelected = self.isElite
    }
  }

  private var selectedToken: Int {
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
    self.isElite = false
    self.addMonsterModel.isElite = false

    self.delegate?.addMonsterFormCell(self, didChangeModel: self.addMonsterModel)
  }

  @IBAction func tapElite() {
    self.isElite = true
    self.addMonsterModel.isElite = true

    self.delegate?.addMonsterFormCell(self, didChangeModel: self.addMonsterModel)
  }

  @IBAction func tokenChangedValue() {
    self.addMonsterModel.selectedToken = self.selectedToken
    
    self.delegate?.addMonsterFormCell(self, didChangeModel: self.addMonsterModel)
  }
}
