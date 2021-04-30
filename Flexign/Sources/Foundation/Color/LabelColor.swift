//
//  LabelColor.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum LabelColor: Colorable {
    case primary
    case secondary
    case tertiary
    case quaternary
    
    public var uiColor: UIColor {
        switch self {
        case .primary:
            return UIColor.system.label
        case .secondary:
            return UIColor.system.secondaryLabel
        case .tertiary:
            return UIColor.system.tertiaryLabel
        case .quaternary:
            return UIColor.system.quaternaryLabel
        }
    }
}
