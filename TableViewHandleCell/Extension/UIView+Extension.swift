//
//  UIView+Extensions.swift
//  TableViewHandleCell
//
//  Created by KH on 05/03/2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({addSubview($0)})
    }
}

