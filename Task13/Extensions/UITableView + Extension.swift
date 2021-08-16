//
//  UITableView + Extension.swift
//  Task13
//
//  Created by 三浦　一真 on 2021/08/16.
//

import UIKit

extension UITableView {

    func registerCustomCell<T: UITableViewCell>(_ cellType: T.Type) {
        register(
            UINib(nibName: T.identifier, bundle: nil),
            forCellReuseIdentifier: T.identifier
        )
    }

    func dequeueReusableCustomCell<T: UITableViewCell>(with cellType: T.Type) -> T {
        return dequeueReusableCell(withIdentifier: T.identifier) as! T
    }

}

private extension UITableViewCell {

    static var identifier: String {
        return className
    }

}

private extension NSObjectProtocol {

    static var className: String {
        return String(describing: self)
    }

}
