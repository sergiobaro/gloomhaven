import UIKit

class AddMonsterFormViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var presenter: AddMonsterFormPresenter!

  private var viewModel: AddMonsterFormViewModel?

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
    self.dismiss(animated: true)
  }
}

extension AddMonsterFormViewController: UITableViewDataSource {

  func numberOfSections(in tableView: UITableView) -> Int {
    return (self.viewModel?.addMore ?? false) ? 2 : 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return self.viewModel?.models.count ?? 0
    }

    return 1
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if indexPath.section == 1 {
      let cell = tableView.dequeueReusableCell(withIdentifier: "AddMonster", for: indexPath)
      return cell
    }

    let cell = tableView.dequeueReusableCell(withIdentifier: "MonsterFormCell", for: indexPath) as! AddMonsterFormCell
    cell.numberOfTokens = self.viewModel?.numberOfTokens ?? 0
    cell.addMonsterModel = self.viewModel?.models[indexPath.row]

    return cell
  }
}

extension AddMonsterFormViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath.section == 1 {
      self.presenter.addMonster()
    }
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
