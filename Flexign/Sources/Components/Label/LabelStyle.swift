//
//  LabelStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public struct LabelStyle {
    // MARK = Lifecycle

    public init(
        viewStyle: ViewStyle? = nil,
        textAlignment: NSTextAlignment? = nil,
        textColor: UIColor? = nil,
        numberOfLines: Int? = nil,
        font: UIFont? = nil
    ) {
        self.viewStyle = viewStyle
        self.textAlignment = textAlignment
        self.textColor = .system(.label)
        self.numberOfLines = numberOfLines
        self.font = font
    }

    // MARK = Public

    public let viewStyle: ViewStyle?

    public let textAlignment: NSTextAlignment?
    public let textColor: UIColor?
    public let numberOfLines: Int?
    public let font: UIFont?
}
