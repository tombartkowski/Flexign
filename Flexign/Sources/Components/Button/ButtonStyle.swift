//
//  ButtonStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public struct ButtonStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle = ViewStyle.colored(.system(.tertiaryFill), cornerRadius: .squircle),
        titleStyle: LabelStyle = .styleWith(font: .button, color: .system(.label)),
        imageSide: ImageSide = .left,
        highlightedColor: UIColor = UIColor.system(.tertiaryFill).shaded(amount: 0.65),
        size: UIEdgeInsets = ButtonSize.default.lg
    ) {
        self.viewStyle = viewStyle
        self.titleStyle = titleStyle
        self.imageSide = imageSide
        self.highlightedColor = highlightedColor
        self.size = size
    }

    // MARK: Public

    public enum ImageSide {
        case left
        case right
    }

    public let viewStyle: ViewStyle
    public let titleStyle: LabelStyle
    public let imageSide: ImageSide
    public let highlightedColor: UIColor
    public let size: UIEdgeInsets
}
