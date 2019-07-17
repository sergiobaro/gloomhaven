import UIKit

extension UICollectionView {

  func dequeue<Cell: UICollectionViewCell>(_ type: Cell.Type, for indexPath: IndexPath) -> Cell? {
    let identifier = String(describing: Cell.self)

    return self.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? Cell
  }
}
