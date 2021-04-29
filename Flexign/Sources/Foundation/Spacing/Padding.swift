//
//  Padding.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum Padding: Spaceable {
    case p1
    case p2
    case p3
    case p4
    case p5
    case p6
    case p7
    case p8
    
    public var value: CGFloat {
        switch self {
        case .p1:
            return 3
        case .p2:
            return 5
        case .p3:
            return 8
        case .p4:
            return 12
        case .p5:
            return 16
        case .p6:
            return 20
        case .p7:
            return 30
        case .p8:
            return 42
        }
    }
}
