//
//  HomeViewModel.swift
//  TableViewHandleCell
//
//  Created by KH on 05/03/2023.
//

import UIKit

final class HomeViewModel {
    
    func getItems() -> [HomeTableViewCellViewModel] {
        [
            HomeTableViewCellViewModel(
                icon: SFSymbols.profile?.withTintColor(.black, renderingMode: .alwaysOriginal),
                title: "Details",
                didSelect: { vc in
                    let detailsVC = DetailsController()
                    vc.present(detailsVC, animated: true)
                }),
            
            HomeTableViewCellViewModel(
                icon: SFSymbols.heart?.withTintColor(.black, renderingMode: .alwaysOriginal),
                title: "Google",
                didSelect: { _ in
                    if let url = URL(string: "https://www.google.com") {
                        UIApplication.shared.open(url)
                    }
                }),
            
            HomeTableViewCellViewModel(
                icon: SFSymbols.setting?.withTintColor(.black, renderingMode: .alwaysOriginal),
                title: "Twitter",
                didSelect: { _ in
                    if let url = URL(string: "https://www.twitter.com") {
                        UIApplication.shared.open(url)
                    }
                }),
        ]
    }
}
