//
//  UIColor+System+GroupedBackground.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIColor.system {
    static var groupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGroupedBackground
        } else {
            return UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00) // #F2F2F7
        }
    }

    static var secondaryGrupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .secondarySystemGroupedBackground
        } else {
            return .white
        }
    }

    static var tertiaryGroupedBackground: UIColor {
        if #available(iOS 13.0, *) {
            return .tertiarySystemGroupedBackground
        } else {
            return UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00) // #F2F2F7
        }
    }
}
