//
//  UIColor+System+Separator.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

extension UIColor.systemColors {
    static var separator: UIColor {
        if #available(iOS 13.0, *) {
            return .separator
        } else {
            return UIColor(red: 0.24, green: 0.24, blue: 0.26, alpha: 1.00) // #3C3C43
                .withAlphaComponent(0.36)
        }
    }

    static var opaqueSeparator: UIColor {
        if #available(iOS 13.0, *) {
            return .opaqueSeparator
        } else {
            return UIColor(red: 0.78, green: 0.78, blue: 0.78, alpha: 1.00) // #C6C6C8
        }
    }
}
