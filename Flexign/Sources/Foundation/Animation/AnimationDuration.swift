//
//  AnimationDuration.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum AnimationDuration: TimeInterval {
    case microFast = 0.08
    case microRegular = 0.16
    case microSlow = 0.24

    case macroFast = 0.4
    case macroRegular = 0.5
    case macroSlow = 0.6
    
    public var timeInterval: TimeInterval {
        return rawValue
    }
}
