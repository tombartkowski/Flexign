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
        textColor = style?.textColor ?? .system(.label)
        font = style?.font ?? UIFont.default.paragraph
        numberOfLines = style?.numberOfLines ?? 0
    }
}
