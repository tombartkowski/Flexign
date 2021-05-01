//
//  UIView+Style.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension UIView {
    func apply(style: ViewStyle?) {
        backgroundColor = style?.backgroundColor ?? .clear
        layer.borderColor = style?.borderColor?.cgColor ?? UIColor.clear.cgColor
        layer.borderWidth = style?.borderWidth ?? 0
        style?.elevation?.shadow?.apply(to: layer)
        applyCornerRadius(style?.cornerRadius)
    }
}
