import UIKit

class MonsterDetailViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  var monster: Monster!

  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = self.monster.name

    self.navigationItem.rightBarButtonItem = UIBarButtonItem(
      barButtonSystemItem: .done,
      target: self,
      action: #selector(tapDone)
    )

    self.tableView.dataSource = self
    self.tableView.separatorInset = .zero
    self.tableView.rowHeight = MonsterDetailCell.height
  }

  @objc func tapDone() {
    self.dismiss(animated: true)
  }
}

extension MonsterDetailViewController: UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.monster.levels.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeue(MonsterDetailCell.self, for: indexPath)!
    cell.fill(monster: monster, level: indexPath.row)

    return cell
  }
}
