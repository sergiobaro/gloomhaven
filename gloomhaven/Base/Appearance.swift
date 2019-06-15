import UIKit

class Appearance {

  static func apply() {
    UIBarButtonItem.appearance().setTitleTextAttributes([.font: UIFont.nyala(size: 22.0)], for: .normal)
    UIBarButtonItem.appearance().setTitleTextAttributes([.font: UIFont.nyala(size: 22.0)], for: .highlighted)
    UIBarButtonItem.appearance().setTitleTextAttributes([.font: UIFont.nyala(size: 22.0)], for: .disabled)

    UINavigationBar.appearance().titleTextAttributes = [.font: UIFont.nyala(size: 30.0)]
    UITabBar.appearance().tintColor = .black
    UINavigationBar.appearance().tintColor = .black
  }
}
