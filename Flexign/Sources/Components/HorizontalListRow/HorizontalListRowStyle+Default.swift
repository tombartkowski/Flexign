//
//  HorizontalRowLayoutStyle+Default.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension HorizontalRowLayoutStyle {
    enum `default` {
        public static let basic = HorizontalRowLayoutStyle(
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
