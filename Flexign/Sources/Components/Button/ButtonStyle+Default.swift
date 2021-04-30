//
//  DefaultButtonStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension ButtonStyle {
    enum Default {
        public static let filledPrimary = ButtonStyle(
            viewStyle: ViewStyle(
                backgroundColor: UIColor.system.blue,
                cornerRadius: CornerRadius.squircle
            ),
            titleStyle: LabelStyle(
                textColor: UIColor.white,
                font: ButtonTypography.button
            ),
            highlightedColor: UIColor.system.blue.lighter(percentage: 0.35)
        )

        public static let filledInvertedPrimary = ButtonStyle(
            viewStyle: ViewStyle(
                backgroundColor: UIColor.system.blue.lighter(percentage: 0.8),
                cornerRadius: CornerRadius.squircle
            ),
            titleStyle: LabelStyle(
                textColor: UIColor.system.blue,
                font: ButtonTypography.button
            ),
            highlightedColor: UIColor.system.blue.lighter(percentage: 0.66)
        )

        public static let textPrimary = ButtonStyle(
            viewStyle: ViewStyle(
                backgroundColor: UIColor.clear,
                cornerRadius: CornerRadius.squircle
            ),
            titleStyle: LabelStyle(
                textColor: UIColor.system.blue,
                font: ButtonTypography.button
            ),
            highlightedColor: UIColor.system.blue.lighter(percentage: 0.8)
        )
    }
}
