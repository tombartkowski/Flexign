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
        setTitleColor(style.titleStyle.textColor, for: .normal)
        imageView?.tintColor = style.titleStyle.textColor
        if style.imageSide == .right {
            semanticContentAttribute = .forceRightToLeft
        } else {
            semanticContentAttribute = .forceLeftToRight
        }

        guard imageView?.image != nil else {
            contentEdgeInsets = style.size
            return
        }
        let factor: CGFloat = style.imageSide == .left ? 1 : -1
        imageEdgeInsets = UIEdgeInsets(
            top: 1,
            left: -3 * factor,
            bottom: -1,
            right: 3 * factor
        )
        titleEdgeInsets = UIEdgeInsets(
            top: 0,
            left: 3 * factor,
            bottom: 0,
            right: -3 * factor
        )
        contentEdgeInsets = UIEdgeInsets(
            top: style.size.top,
            left: 3 + style.size.left,
            bottom: style.size.bottom,
            right: 3 + style.size.right
        )
    }
}
