//
//  VerticalLabelsContentStyle+Default.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension VerticalLabelsContentStyle {
    enum Default {
        public static let headlineSubheadline = VerticalLabelsContentStyle(
            topLabelStyle: LabelStyle.Default.headline,
            bottomLabelStyle: LabelStyle.Default.subheadline,
            spacing: Padding.p1.value
        )
    }
}
