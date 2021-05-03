//
//  DefaultButtonStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension ButtonStyle {
    enum `default` {
        public static let fillPrimary = ButtonStyle(
            viewStyle: ViewStyle.colored(.system(.blue), cornerRadius: .squircle),
            titleStyle: .styleWith(font: .button, color: .white),
            highlightedColor: UIColor.system(.blue).highlighted
        )

        public static let filledInvertedPrimary = ButtonStyle(
            viewStyle: ViewStyle.colored(UIColor.system(.blue).secondary, cornerRadius: .squircle),
            titleStyle: .styleWith(font: .button, color: .system(.blue)),
            highlightedColor: UIColor.system(.blue).secondaryHighlighted
        )

        public static let textPrimary = ButtonStyle(
            viewStyle: ViewStyle.colored(UIColor.clear, cornerRadius: .squircle),
            titleStyle: .styleWith(font: .button, color: .system(.blue)),
            highlightedColor: UIColor.system(.blue).secondary
        )
    }
}
