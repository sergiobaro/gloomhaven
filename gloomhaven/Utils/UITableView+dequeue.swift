import UIKit

extension UITableView {

  func dequeue<Cell: UITableViewCell>(_ type: Cell.Type, for indexPath: IndexPath) -> Cell? {
    let identifier = String(describing: Cell.self)

    return self.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? Cell
  }

  func dequeue<Header: UITableViewHeaderFooterView>(_ type: Header.Type) -> Header? {
    let identifier = String(describing: Header.self)

    return self.dequeueReusableHeaderFooterView(withIdentifier: identifier) as? Header
  }
}
