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

    public let color: UIColor
    public let offset: CGSize
    public let blur: CGFloat

    public func apply(to layer: CALayer) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offset
        layer.shadowRadius = blur
        layer.shadowOpacity = 1
    }
}
