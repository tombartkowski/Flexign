//
//  Colorable.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

import UIKit

public protocol Colorable {
    var uiColor: UIColor { get }
}

public extension Colorable {
    func lighter(percentage: CGFloat = 0.4) -> Colorable  {
        return uiColor.lighter(percentage: percentage)
    }
    
    func darker(percentage: CGFloat = 0.4) -> Colorable  {
        return uiColor.darker(percentage: percentage)
    }
    
    func tinted(percentage: CGFloat = 0.4) -> Colorable  {
        return uiColor.tinted(amount: percentage)
    }
    
    func shaded(percentage: CGFloat = 0.4) -> Colorable  {
        return uiColor.shaded(amount: percentage)
    }
    
    func withTransparency(_ alpha: CGFloat) -> Colorable {
        return uiColor.withAlphaComponent(alpha)
    }
}

