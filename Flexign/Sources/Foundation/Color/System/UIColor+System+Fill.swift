//
//  UIColor+System+Fill.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIColor.systemColors {
    static var fill: UIColor {
        if #available(iOS 13.0, *) {
            return .systemFill
        } else {
            return UIColor(red: 0.47, green: 0.47, blue: 0.50, alpha: 1.00) // #787880
                .withAlphaComponent(0.2)
        }
    }

    static var secondaryFill: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemFill
        } else {
            return UIColor(red: 0.47, green: 0.47, blue: 0.50, alpha: 1.00) // #787880
                .withAlphaComponent(0.16)
        }
    }

    static var tertiaryFill: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemFill
        } else {
            return UIColor(red: 0.46, green: 0.46, blue: 0.50, alpha: 1.00) // #767680
                .withAlphaComponent(0.12)
        }
    }

    static var quaternaryFill: UIColor {
        if #available(iOS 13.0, *) {
            return .quaternarySystemFill
        } else {
            return UIColor(red: 0.45, green: 0.45, blue: 0.50, alpha: 1.00) // #747480
                .withAlphaComponent(0.08)
        }
    }
}
