//
//  HorizontalListRowStyle+Default.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension HorizontalListRowStyle {
    enum `default` {
        public static let basic = HorizontalListRowStyle(
            itemsSpacing: Padding.p3,
            padding: UIEdgeInsets(
                top: Padding.p4,
                left: Margin.lg,
                bottom: Padding.p4,
                right: Padding.p4
            )
        )
    }
}
