//
//  UILabel+Style.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UILabel {
    func apply(style: LabelStyle?) {
        apply(style: style?.viewStyle)
        textAlignment = style?.textAlignment ?? .left
        textColor = style?.textColor?.uiColor ?? LabelColor.primary.uiColor
        font = style?.font?.font ?? Typography.paragraph.font
        numberOfLines = style?.numberOfLines ?? 0
    }
}
