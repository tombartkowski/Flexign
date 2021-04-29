//
//  UIView+ApplyCornerRadius.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

extension UIView {
    func applyCornerRadius(_ cornerRadius: CornerRadius?) {
        guard let cornerRadius = cornerRadius else {
            if layer.cornerRadius != 0 {
                layer.cornerRadius = 0
            }
            if layer.mask != nil {
                layer.mask = nil
            }
            return
        }
        switch cornerRadius {
        case let .rounded(value):
            if layer.cornerRadius != value {
                layer.cornerRadius = value
            }
        case .full:
            layer.cornerRadius = bounds.height / 2
        case .squircle:
            applySquircle(for: bounds)
        default:
            break
        }
    }
}
