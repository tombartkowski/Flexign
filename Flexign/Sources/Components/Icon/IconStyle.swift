//
//  IconStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public struct IconStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle? = nil,
        size: IconSizeable? = nil,
        variant: Variant? = nil,
        padding: CGFloat? = nil
    ) {
        self.viewStyle = viewStyle
        self.size = size
        self.variant = variant
        self.padding = padding
    }

    // MARK: Public

    public enum Variant {
        case plain
        case tinted(Colorable)
    }

    public let viewStyle: ViewStyle?

    public let size: IconSizeable?
    public let variant: Variant?
    public let padding: CGFloat?
}
