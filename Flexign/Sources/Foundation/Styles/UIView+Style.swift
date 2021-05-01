//
//  UIView+Style.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension UIView {
    func apply(style: ViewStyle) {
        backgroundColor = style.backgroundColor
        layer.borderColor = style.borderColor?.cgColor
        layer.borderWidth = style.borderWidth ?? .zero
        style.elevation?.shadow?.apply(to: layer)
        applyCornerRadius(style.cornerRadius)
    }
}
