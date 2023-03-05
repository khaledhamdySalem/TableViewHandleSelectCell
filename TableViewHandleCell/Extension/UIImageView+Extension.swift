//
//  UIImageView+Extension.swift
//  TableViewHandleCell
//
//  Created by KH on 05/03/2023.
//

import UIKit

class AspectFitImageView: UIImageView {
    
    convenience public init(image: UIImage? = nil,
                            cornerRadius: CGFloat = 0,
                            tintColor: UIColor? = nil) {
        self.init(image: image)
        self.layer.cornerRadius = cornerRadius
        if let color = tintColor {
            self.tintColor = color
        }
    }
    
    convenience public init() {
        self.init(image: nil)
    }
    
    override public init(image: UIImage?) {
        super.init(image: image)
        contentMode = .scaleAspectFit
        clipsToBounds = true
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

enum SFSymbols {
    static let next = UIImage(systemName: "chevron.forward")
    static let next2 = UIImage(systemName: "chevron.forward.circle.fill")
    static let heart = UIImage(systemName: "heart")
    static let heartFill = UIImage(systemName: "heart.fill")
    static let home = UIImage(systemName: "house")
    static let key = UIImage(systemName: "key")
    static let profile = UIImage(systemName: "person")
    static let setting = UIImage(systemName: "gearshape")
    static let search = UIImage(systemName: "magnifyingglass")
    static let menu = UIImage(systemName: "text.justifyleft")
    static let filter = UIImage(systemName: "slider.horizontal.3")
    static let back = UIImage(systemName: "chevron.backward")
    static let share = UIImage(systemName: "square.and.arrow.up")
    static let checkmark = UIImage(systemName: "checkmark.circle.fill")
    static let close = UIImage(systemName: "xmark")
    static let closeCircle = UIImage(systemName: "xmark.circle.fill")
    static let plus = UIImage(systemName: "plus")
    static let location = UIImage(systemName: "location.fill")
    static let removeAccount = UIImage(systemName: "person.crop.circle.badge.xmark")
    static let cars = UIImage(systemName: "car.fill")
    static let arrow = UIImage(systemName: "arrow.up")
    static let star = UIImage(systemName: "star")
    static let exclamationmark = UIImage(systemName: "exclamationmark.circle")
    static let circle = UIImage(systemName: "circle.fill")
}
