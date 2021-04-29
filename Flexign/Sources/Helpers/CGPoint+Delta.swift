//
//  CGPoint+Delta.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

import CoreGraphics.CGBase

extension CGPoint {
    
    static var xDelta: CGFloat = 0
    static var yDelta: CGFloat = 0
    
    static func xDeltaPoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: xDelta + x, y: y)
    }
    
    static func yDeltaPoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: x, y: yDelta + y)
    }
    
    static func deltaPoint(x: CGFloat, y: CGFloat) -> CGPoint {
        return CGPoint(x: xDelta + x, y: yDelta + y)
    }
}
