//
//  Shadow.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public struct Shadow {
    // MARK: Lifecycle

    public init(color: UIColor, offset: CGSize, blur: CGFloat) {
        self.color = color
        self.offset = offset
        self.blur = blur
    }

    // MARK: Public

    public func apply(to layer: CALayer) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowRadius = blur
        layer.shadowOpacity = 1
    }

    // MARK: Internal

    let color: UIColor
    let offset: CGSize
    let blur: CGFloat
}
