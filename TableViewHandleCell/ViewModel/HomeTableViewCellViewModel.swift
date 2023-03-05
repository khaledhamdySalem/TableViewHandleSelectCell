//
//  HomeTableViewCellViewModel.swift
//  TableViewHandleCell
//
//  Created by KH on 05/03/2023.
//

import UIKit

final class HomeTableViewCellViewModel {
   
    let icon: UIImage?
    let title: String
    var didSelect: ((UIViewController) -> ())?
    
    init(icon: UIImage?, title: String, didSelect: ((UIViewController) -> Void)?) {
        self.icon = icon
        self.title = title
        self.didSelect = didSelect
    }
}
