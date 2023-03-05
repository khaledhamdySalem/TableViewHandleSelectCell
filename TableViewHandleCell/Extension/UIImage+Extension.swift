//
//  UIImage+Extension.swift
//  TableViewHandleCell
//
//  Created by KH on 05/03/2023.
//


import UIKit

extension UIImage {
    
    enum CustomName: String {
        case language
        case map
    }
    
    static func custom(name: CustomName) -> UIImage? {
        return UIImage.init(named: name.rawValue)
    }
}
