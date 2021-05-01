//
//  LabelStyle+FactoryMethod.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 30/04/2021.
//

public extension LabelStyle {
    static func styleWith(font: UIFont, color: UIColor = .system(.label)) -> LabelStyle {
        return LabelStyle(textColor: color, font: font)
    }
}
