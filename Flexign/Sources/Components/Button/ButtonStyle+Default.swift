//
//  DefaultButtonStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension ButtonStyle {
    enum Default {
        public static let fillPrimary = ButtonStyle(
            viewStyle: ViewStyle.colored(.system(.blue), cornerRadius: .squircle),
            titleStyle: LabelStyle.withFont(UIFont.default.button, UIColor.white),
            highlightedColor: UIColor.system(.blue).highlighted
        )

        public static let filledInvertedPrimary = ButtonStyle(
            viewStyle: ViewStyle.colored(UIColor.system(.blue).secondary, cornerRadius: .squircle),
            titleStyle: LabelStyle(
                textColor: .system(.blue),
                font: UIFont.default.button
            ),
            highlightedColor: UIColor.system(.blue).secondaryHighlighted
        )

        public static let textPrimary = ButtonStyle(
            viewStyle: ViewStyle.colored(UIColor.clear, cornerRadius: .squircle),
            titleStyle: LabelStyle(
                textColor: .system(.blue),
                font: UIFont.default.button
            ),
            highlightedColor: UIColor.system(.blue).secondary
        )
    }
}
