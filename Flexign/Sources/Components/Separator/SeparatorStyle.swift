//
//  SeparatorStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public struct SeparatorStyle {
    // MARK: Lifecycle

    public init(
        backgroundColor: UIColor = .system(.opaqueSeparator),
        visible: Bool = true
    ) {
        self.backgroundColor = backgroundColor
        self.visible = visible
    }

    // MARK: Public

    public let visible: Bool
    public let backgroundColor: UIColor
}
