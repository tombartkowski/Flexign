//
//  UIColor+Shades.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIColor {
    func tinted(amount: CGFloat) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        if #available(iOS 13.0, *) {
            return UIColor.init {  (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return self.withAlphaComponent(1 - amount)
                }
                else {
                    return UIColor(
                        red: red + (1.0 - red) * amount,
                        green: green + (1.0 - green) * amount,
                        blue: blue + (1.0 - blue) * amount,
                        alpha: alpha
                    )
                }
            }
        } else {
            return UIColor(
                red: red + (1.0 - red) * amount,
                green: green + (1.0 - green) * amount,
                blue: blue + (1.0 - blue) * amount,
                alpha: alpha
            )
        }
    }
    
    func shaded(amount: CGFloat) -> UIColor {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        if #available(iOS 13.0, *) {
            return UIColor.init {  (traitCollection: UITraitCollection) -> UIColor in
                if traitCollection.userInterfaceStyle == .dark {
                    return UIColor(
                        red: red + (1.0 - red) * amount,
                        green: green + (1.0 - green) * amount,
                        blue: blue + (1.0 - blue) * amount,
                        alpha: alpha
                    )
                }
                else {
                    return UIColor(
                        red: red * amount,
                        green: green * amount,
                        blue: blue * amount,
                        alpha: alpha
                    )
                }
            }
        } else {
            return UIColor(
                red: red * amount,
                green: green * amount,
                blue: blue * amount,
                alpha: alpha
            )
        }

        
    }
}
