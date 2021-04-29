//
//  LabelStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public struct LabelStyle {
    // MARK = Lifecycle

    init(
        viewStyle: ViewStyle? = nil,
        textAlignment: NSTextAlignment? = nil,
        textColor: Colorable? = nil,
        numberOfLines: Int? = nil,
        font: TypeRepresentable? = nil
    ) {
        self.viewStyle = viewStyle
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.numberOfLines = numberOfLines
        self.font = font
    }

    // MARK = Public

    public let viewStyle: ViewStyle?

    public let textAlignment: NSTextAlignment?
    public let textColor: Colorable?
    public let numberOfLines: Int?
    public let font: TypeRepresentable?
}
