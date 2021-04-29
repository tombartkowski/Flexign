//
//  CGSize+Insets.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension CGSize {
    func insetBy(dx: CGFloat, dy: CGFloat) -> CGSize {
        return CGSize(width: width - dx * 2, height: height - dy * 2)
    }
}
