//
//  ButtonStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public struct ButtonStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle? = nil,
        titleStyle: LabelStyle? = nil,
        imageSide: ImageSide? = nil,
        highlightedColor: UIColor? = nil,
        contentInsets: UIEdgeInsets? = nil
    ) {
        self.viewStyle = viewStyle
        self.titleStyle = titleStyle
        self.imageSide = imageSide
        self.highlightedColor = highlightedColor
        self.contentInsets = contentInsets
    }

    // MARK: Public

    public enum ImageSide {
        case left
        case right
    }

    public let viewStyle: ViewStyle?
    public let titleStyle: LabelStyle?

    public let imageSide: ImageSide?
    public let highlightedColor: UIColor?
    public let contentInsets: UIEdgeInsets?
}
