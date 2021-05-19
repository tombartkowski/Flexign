//
//  UIColor+System+Background.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIColor.systemColors {
    static var background: UIColor {
        if #available(iOS 13.0, *) {
            return .systemBackground
        } else {
            return .white
        }
    }

    static var secondaryBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemBackground
        } else {
            return UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00) // #F2F2F7
        }
    }

    static var tertiaryBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemBackground
        } else {
            return UIColor.white
        }
    }
}
