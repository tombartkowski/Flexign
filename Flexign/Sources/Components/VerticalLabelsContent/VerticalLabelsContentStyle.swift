//
//  VerticalLabelsContentStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public struct VerticalLabelsContentStyle {
    public init(
        viewStyle: ViewStyle = .default,
        topLabelStyle: LabelStyle = .styleWith(font: .headline),
        bottomLabelStyle: LabelStyle = .styleWith(font: .subheadline),
        spacing: CGFloat = Padding.p1
    ) {
        self.viewStyle = viewStyle
        self.topLabelStyle = topLabelStyle
        self.bottomLabelStyle = bottomLabelStyle
        self.spacing = spacing
    }

    // MARK = Public

    public let viewStyle: ViewStyle
    public let topLabelStyle: LabelStyle
    public let bottomLabelStyle: LabelStyle
    public let spacing: CGFloat
}
