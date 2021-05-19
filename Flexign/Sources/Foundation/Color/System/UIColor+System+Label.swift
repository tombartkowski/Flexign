//
//  UIColor+System+Label.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIColor.systemColors {
    static var label: UIColor {
        if #available(iOS 13.0, *) {
            return .label
        } else {
            return .black
        }
    }

    static var secondaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .secondaryLabel
        } else {
            return UIColor(red: 0.24, green: 0.24, blue: 0.26, alpha: 1.00) // #3C3C43
                .withAlphaComponent(0.6)
        }
    }

    static var tertiaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiaryLabel
        } else {
            return UIColor(red: 0.24, green: 0.24, blue: 0.26, alpha: 1.00) // #3C3C43
                .withAlphaComponent(0.3)
        }
    }
    
    static var quaternaryLabel: UIColor {
        if #available(iOS 13.0, *) {
            return .quaternaryLabel
        } else {
            return UIColor(red: 0.24, green: 0.24, blue: 0.26, alpha: 1.00) // #3C3C43
                .withAlphaComponent(0.18)
        }
    }
}
