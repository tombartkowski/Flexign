//
//  DefaultLabelStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension LabelStyle {
    enum Default {
        public static let header1 = LabelStyle(font: .header1)
        public static let header2 = LabelStyle(font: .header2)
        public static let header3 = LabelStyle(font: .header3)
        public static let headline = LabelStyle(font: .headline)
        public static let subheadline = LabelStyle(
            textColor: .system(.secondaryLabel),
            font: .subheadline
        )
        public static let paragraph = LabelStyle()
        public static let footnote = LabelStyle(
            textColor: .system(.tertiaryLabel),
            font: .footnote
        )
    }
}
