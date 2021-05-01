//
//  ViewStyle+FactoryMethod.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 30/04/2021.
//

public extension ViewStyle {
    static func colored(
        _ backgroundColor: UIColor,
        cornerRadius: CornerRadius = .none
    ) -> ViewStyle {
        return ViewStyle(backgroundColor: backgroundColor, cornerRadius: cornerRadius)
    }
    
    static var `default`: ViewStyle {
        return ViewStyle()
    }
}
