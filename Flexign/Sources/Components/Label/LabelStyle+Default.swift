//
//  DefaultLabelStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension LabelStyle {
    enum Default {
        public static let headline = LabelStyle(
            font: UIFont.default.headline
        )
        public static let subheadline = LabelStyle(
            textColor: .system(.secondaryLabel),
            font: UIFont.default.subheadline
        )
        public static let paragraph = LabelStyle()
        public static let footnote = LabelStyle(
            textColor: .system(.tertiaryLabel),
            font: UIFont.default.footnote
        )
        public static let header1 = LabelStyle(
            font: UIFont.default.header1
        )
        public static let header2 = LabelStyle(
            font: UIFont.default.header2
        )
        public static let header3 = LabelStyle(
            font: UIFont.default.header3
        )
    }
}
