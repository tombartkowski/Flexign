//
//  Margin.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum Margin: Spaceable {
    case small
    case base

    public var value: CGFloat {
        switch self {
        case .base:
            return 16
        case .small:
            return 10
        }
    }
}
