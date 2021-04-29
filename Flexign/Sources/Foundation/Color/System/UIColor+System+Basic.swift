//
//  UIColor+System+Basic.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

extension UIColor.system {
    static var red = UIColor.systemRed
    static var orange = UIColor.systemOrange
    static var yellow = UIColor.systemYellow
    static var green = UIColor.systemGreen
    static var teal = UIColor.systemTeal
    static var blue = UIColor.systemBlue
    static var indigo: UIColor {
        if #available(iOS 13.0, *) {
            return .systemIndigo
        } else {
            return UIColor(red: 0.35, green: 0.34, blue: 0.84, alpha: 1.00) // #5856D6
        }
    }

    static var purple = UIColor.systemPurple
    static var pink = UIColor.systemPink
}
