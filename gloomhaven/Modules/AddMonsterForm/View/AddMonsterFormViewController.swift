import UIKit

class AddMonsterFormViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var presenter: AddMonsterFormPresenter!

  private var viewModel: AddMonsterFormViewModel!

  override func viewDidLoad() {
    super.viewDidLoad()

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

    self.presenter.viewIsReady()
  }

  // MARK: - Actions

  @objc func tapCancel() {
    self.dismiss(animated: true)
  }

  @objc func tapDone() {
    self.presenter.done()
    self.dismiss(animated: true)
  }
}

extension AddMonsterFormViewController: UITableViewDataSource {

  func numberOfSections(in tableView: UITableView) -> Int {
    if self.viewModel.addMore {
      return 2
    }
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return self.viewModel.monsters.count
    }
    return 1
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 1 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "AddMonster", for: indexPath)
      return cell
    }

    let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterFormCell", for: indexPath) as! AddMonsterFormCell
    cell.delegate = self
    cell.numberOfTokens = viewModel.tokenCount
    cell.addMonsterModel = viewModel.monsters[indexPath.row]

    return cell
  }

  func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
    if indexPath.section == 0 {
      return .delete
    }
    return .none
  }

  func tableView(
    _ tableView: UITableView,
    commit editingStyle: UITableViewCell.EditingStyle,
    forRowAt indexPath: IndexPath
  ) {
    if editingStyle == .delete {
      var monsters = self.viewModel.monsters
      monsters.remove(at: indexPath.row)
      self.viewModel.monsters = monsters

      tableView.deleteRows(at: [indexPath], with: .none)

      self.presenter.userChangedMonsters(self.viewModel.monsters)
    }
  }
}

extension AddMonsterFormViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.section == 1 {
      self.presenter.addMonster()
    }
  }
}

extension AddMonsterFormViewController: AddMonsterFormCellDelegate {

  func addMonsterFormCell(_ cell: AddMonsterFormCell, didChangeModel model: AddMonsterModel) {
    guard let indexPath = self.tableView.indexPath(for: cell) else {
      return
    }

    self.viewModel.monsters[indexPath.row] = model

    self.presenter.userChangedMonsters(self.viewModel.monsters)
  }
}

extension AddMonsterFormViewController: AddMonsterFormViewProtocol {

  func display(title: String) {
    self.title = title
  }

  func display(viewModel: AddMonsterFormViewModel) {
    self.viewModel = viewModel
    self.tableView.reloadData()
  }
}
