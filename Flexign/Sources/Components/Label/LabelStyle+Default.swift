//
//  DefaultLabelStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension LabelStyle {
    enum Default {
        public static let headline = LabelStyle(
            font: Typography.headline
        )
        public static let subheadline = LabelStyle(
            textColor: LabelColor.secondary,
            font: Typography.subheadline
        )
        public static let paragraph = LabelStyle()
        public static let footnote = LabelStyle(
            textColor: LabelColor.tertiary,
            font: Typography.footnote
        )
        public static let header1 = LabelStyle(
            font: Typography.header1
        )
        public static let header2 = LabelStyle(
            font: Typography.header2
        )
        public static let header3 = LabelStyle(
            font: Typography.header3
        )
    }
}
