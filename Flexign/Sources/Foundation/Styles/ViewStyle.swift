//
//  ViewStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

// MARK: - ViewStyle

public struct ViewStyle {
    // MARK: Lifecycle

    public init(
        backgroundColor: Colorable? = nil,
        borderColor: Colorable? = nil,
        borderWidth: CGFloat? = nil,
        cornerRadius: CornerRadius? = nil,
        elevation: Elevatable? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.borderColor = borderColor
        self.borderWidth = borderWidth
        self.cornerRadius = cornerRadius
        self.elevation = elevation
    }

    // MARK: Public

    public let backgroundColor: Colorable?
    public let borderColor: Colorable?
    public let borderWidth: CGFloat?
    public let cornerRadius: CornerRadius?
    public let elevation: Elevatable?
}


