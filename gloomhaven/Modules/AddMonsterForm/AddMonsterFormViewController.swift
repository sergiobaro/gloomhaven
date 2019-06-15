import UIKit

class AddMonsterFormViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var monster: Monster!
  weak var delegate: AddMonsterFormDelegate?

  private var addMonsterModels = [AddMonsterModel]()

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = self.monster.name

    self.navigationItem.leftBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .cancel,
      target: self,
      action: #selector(tapCancel)
    )

    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )

    self.tableView.tableFooterView = UIView()
    self.tableView.dataSource = self
    self.tableView.delegate = self

    self.addMonsterModels.append(.init(isElite: false, tokenNumber: 1))

    self.tableView.reloadData()
  }

  // MARK: - Actions

  @objc func tapCancel() {
    self.dismiss(animated: true)
  }

  @objc func tapDone() {
    self.delegate?.addMonsterFormDidAddMonsters(self.addMonsterModels)
    self.dismiss(animated: true)
  }
}

extension AddMonsterFormViewController: UITableViewDataSource {

  func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return self.addMonsterModels.count
    }

    return 1
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 1 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "AddMonster", for: indexPath)
      return cell
    }

    let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterFormCell", for: indexPath) as! MonsterFormCell
    cell.numberOfTokens = self.monster.tokenCount
    cell.addMonsterModel = self.addMonsterModels[indexPath.row]

    return cell
  }
}

extension AddMonsterFormViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.section == 1 {
      self.addMonsterModels.append(.init(isElite: false, tokenNumber: 1))
      self.tableView.reloadData()
    }
  }
}
