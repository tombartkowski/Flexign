//
//  UIView+Squircle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIView {
    func applySquircle(for bounds: CGRect) {
        let maskLayer = CAShapeLayer()
        maskLayer.path = layer.squirclePath(for: bounds).cgPath
        layer.mask = maskLayer
    }
}
