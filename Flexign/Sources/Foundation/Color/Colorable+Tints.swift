//
//  Colorable+Tints.swift
//  FBSnapshotTestCase
//
//  Created by Tomasz Bartkowski on 30/04/2021.
//

public extension Colorable {
    var highlighted: Colorable {
        return uiColor.tinted(percentage: 0.35)
    }
    
    var secondary: Colorable {
        return uiColor.tinted(percentage: 0.85)
    }
    
    var highlightedSecondary: Colorable {
        return uiColor.tinted(percentage: 0.66)
    }
}
