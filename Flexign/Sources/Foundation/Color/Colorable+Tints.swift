//
//  UIColor+Tints.swift
//  FBSnapshotTestCase
//
//  Created by Tomasz Bartkowski on 30/04/2021.
//

public extension UIColor {
    var highlighted: UIColor {
        return tinted(amount: 0.35)
    }

    var secondary: UIColor {
        return tinted(amount: 0.85)
    }

    var secondaryHighlighted: UIColor {
        return tinted(amount: 0.66)
    }
}
