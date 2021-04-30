//
//  UIView+Squircle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIView {
    func applySquircle(for bounds: CGRect) {
        let maskLayer: CAShapeLayer = (layer.mask as? CAShapeLayer) ?? CAShapeLayer()
        maskLayer.path = CALayer.squirclePath(for: bounds).cgPath
        layer.mask = maskLayer
    }
}
