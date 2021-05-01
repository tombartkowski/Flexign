//
//  UIButton+Style.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIButton {
    func apply(style: ButtonStyle) {
        apply(style: style.viewStyle)

        titleLabel?.apply(style: style.titleStyle)
        setTitleColor(
            style.titleStyle?.textColor ?? .system(.label),
            for: .normal
        )
        
        

        imageView?.tintColor = style.titleStyle?.textColor ?? .system(.blue)
        if style.imageSide == .right {
            imageEdgeInsets = UIEdgeInsets(top: 1, left: 10, bottom: -1, right: 0)
            semanticContentAttribute = .forceRightToLeft
        } else {
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
            semanticContentAttribute = .forceLeftToRight
        }
        contentEdgeInsets = style.contentInsets ?? UIEdgeInsets(
            top: 15,
            left: 15,
            bottom: 12.5,
            right: 12.5
        )
    }
}
