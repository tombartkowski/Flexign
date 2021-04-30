//
//  UIView+Common+LayoutSubviews.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 30/04/2021.
//

extension UIView {
    func updateWithStyle(style: ViewStyle?) {
        applyCornerRadius(style?.cornerRadius)
    }
}
