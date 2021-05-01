//
//  UIColor+System+Gray.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

extension UIColor.systemColors {
    static var grey: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray
        } else {
            return UIColor(red: 0.56, green: 0.56, blue: 0.58, alpha: 1.00) // #8E8E93
        }
    }

    static var grey2: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray2
        } else {
            return UIColor(red: 0.68, green: 0.68, blue: 0.70, alpha: 1.00) // #AEAEB2
        }
    }

    static var grey3: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray3
        } else {
            return UIColor(red: 0.78, green: 0.78, blue: 0.80, alpha: 1.00) // #C7C7CC
        }
    }

    static var grey4: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray4
        } else {
            return UIColor(red: 0.82, green: 0.82, blue: 0.84, alpha: 1.00) // #D1D1D6
        }
    }

    static var grey5: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray5
        } else {
            return UIColor(red: 0.90, green: 0.90, blue: 0.92, alpha: 1.00) // #E5E5EA
        }
    }

    static var grey6: UIColor {
        if #available(iOS 13.0, *) {
            return .systemGray6
        } else {
            return UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00) // #F2F2F7
        }
    }
}
