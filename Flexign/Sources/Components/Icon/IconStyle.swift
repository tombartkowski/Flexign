//
//  IconStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public struct IconStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle = .default,
        size: CGFloat = IconSize.default.sm,
        color: Color = .tinted(.system(.label)),
        padding: CGFloat = 0
    ) {
        self.viewStyle = viewStyle
        self.size = size
        self.color = color
        self.padding = padding
    }

    // MARK: Public

    public enum Color {
        case original
        case tinted(UIColor)
    }

    public let viewStyle: ViewStyle
    public let size: CGFloat
    public let color: Color
    public let padding: CGFloat
}
