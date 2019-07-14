import UIKit

class AddMonsterFormViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  private weak var addButton: UIBarButtonItem!

  var presenter: AddMonsterFormPresenter!

  private var viewModel: AddMonsterFormViewModel!

  override func viewDidLoad() {
    super.viewDidLoad()

    self.setupNavBar()
    self.setupTableView()

    self.presenter.viewIsReady()
  }

  // MARK: - Setup

  private func setupNavBar() {
    let cancelButton = UIBarButtonItem(
      barButtonSystemItem: .cancel,
      target: self,
      action: #selector(tapCancel)
    )
    let addButton = UIBarButtonItem(
      barButtonSystemItem: .add,
      target: self,
      action: #selector(tapAdd)
    )
    let doneButton = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )

    self.navigationItem.leftBarButtonItem = cancelButton
    self.navigationItem.rightBarButtonItems = [doneButton, addButton]

    self.addButton = addButton
  }

  private func setupTableView() {
    self.tableView.tableFooterView = UIView()
    self.tableView.dataSource = self
  }

  // MARK: - Actions

  @objc func tapCancel() {
    self.dismiss(animated: true)
  }

  @objc func tapDone() {
    self.presenter.done()
    self.dismiss(animated: true)
  }

  @objc func tapAdd() {
    self.presenter.addMonster()
  }
}

extension AddMonsterFormViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.viewModel.monsters.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterFormCell", for: indexPath) as! AddMonsterFormCell
    cell.delegate = self
    cell.numberOfTokens = viewModel.tokenCount
    cell.addMonsterModel = viewModel.monsters[indexPath.row]

    return cell
  }

  func tableView(
    _ tableView: UITableView,
    commit editingStyle: UITableViewCell.EditingStyle,
    forRowAt indexPath: IndexPath
  ) {
    if editingStyle == .delete {
      self.viewModel.monsters.remove(at: indexPath.row)

      tableView.deleteRows(at: [indexPath], with: .none)

      self.presenter.userChangedMonsters(self.viewModel.monsters)
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
    self.addButton.isEnabled = viewModel.addMore

    self.tableView.reloadData()
  }
}
