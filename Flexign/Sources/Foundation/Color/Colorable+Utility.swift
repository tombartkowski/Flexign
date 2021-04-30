//
//  Colorable+Utility.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 30/04/2021.
//

public extension Colorable {
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

