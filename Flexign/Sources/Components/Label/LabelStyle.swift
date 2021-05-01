//
//  LabelStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public struct LabelStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle = .default,
        textAlignment: NSTextAlignment = .left,
        textColor: UIColor = .system(.label),
        numberOfLines: Int = 0,
        font: UIFont = .paragraph
    ) {
        self.viewStyle = viewStyle
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.numberOfLines = numberOfLines
        self.font = font
    }

    // MARK: Public

    public let viewStyle: ViewStyle
    public let textAlignment: NSTextAlignment
    public let textColor: UIColor
    public let numberOfLines: Int
    public let font: UIFont
}
