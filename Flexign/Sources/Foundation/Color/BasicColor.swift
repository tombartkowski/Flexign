//
//  BasicColor.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum BasicColor: Colorable {
    case primary
    case white
    
    public var uiColor: UIColor {
        switch self {
        case .primary:
            return UIColor.system.blue
        case .white:
            return .white
        }
    }
}

extension UIColor: Colorable {
    public var uiColor: UIColor {
        return self
    }
}
