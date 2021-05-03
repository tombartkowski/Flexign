//
//  VerticalLabelsContentStyle+Default.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension VerticalLabelsContentStyle {
    enum `default` {
        public static let headlineSubheadline = VerticalLabelsContentStyle(
            topLabelStyle: LabelStyle.default.headline,
            bottomLabelStyle: LabelStyle.default.subheadline,
            spacing: Padding.p1
        )
    }
}
