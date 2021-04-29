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
                backgroundColor: BasicColor.primary,
                cornerRadius: CornerRadius.squircle
            ),
            titleStyle: LabelStyle(
                textColor: BasicColor.white,
                font: ButtonTypography.button
            ),
            highlightedColor: BasicColor.primary.lighter(percentage: 0.35)
        )

        public static let filledInvertedPrimary = ButtonStyle(
            viewStyle: ViewStyle(
                backgroundColor: BasicColor.primary.lighter(percentage: 0.8),
                cornerRadius: CornerRadius.squircle
            ),
            titleStyle: LabelStyle(
                textColor: BasicColor.primary,
                font: ButtonTypography.button
            ),
            highlightedColor: BasicColor.primary.lighter(percentage: 0.66)
        )

        public static let textPrimary = ButtonStyle(
            viewStyle: ViewStyle(
                backgroundColor: UIColor.clear,
                cornerRadius: CornerRadius.squircle
            ),
            titleStyle: LabelStyle(
                textColor: BasicColor.primary,
                font: ButtonTypography.button
            ),
            highlightedColor: BasicColor.primary.lighter(percentage: 0.8)
        )
    }
}
