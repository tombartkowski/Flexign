//
//  ButtonStyle+FactoryMethod.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 01/05/2021.
//

public extension ButtonStyle {
    typealias KeyColor = UIColor
    enum ColorStyle {
        case darkFillWhiteText(KeyColor)
        case lightFillDarkText(KeyColor)
        case noFillDarkText(KeyColor)
    }

    static func with(
        size: UIEdgeInsets = ButtonSize.Default.lg,
        colorStyle: ColorStyle,
        cornerRadius: CornerRadius = .squircle
    ) -> ButtonStyle {
        switch colorStyle {
        case let .darkFillWhiteText(color):
            return ButtonStyle(
                viewStyle: ViewStyle.colored(color, cornerRadius: cornerRadius),
                titleStyle: .styleWith(font: .button, color: .white),
                highlightedColor: color.shaded(amount: 0.65),
                size: size
            )
        case let .lightFillDarkText(color):
            return ButtonStyle(
                viewStyle: ViewStyle.colored(color.secondary, cornerRadius: cornerRadius),
                titleStyle: .styleWith(font: .button, color: color),
                highlightedColor: color.tinted(amount: 0.65),
                size: size
            )
        case let .noFillDarkText(color):
            return ButtonStyle(
                viewStyle: ViewStyle.colored(.clear, cornerRadius: cornerRadius),
                titleStyle: .styleWith(font: .button, color: color),
                highlightedColor: color.secondary,
                size: size
            )
        }
    }
}
