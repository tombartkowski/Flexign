//
//  UIImage+ButtonImage.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIImage {
    func buttonImage(for font: UIFont) -> UIImage {
        let pointSize = font.pointSize
        let size = CGSize(width: pointSize * 1.1, height: pointSize * 1.1)
        return imageForSize(size).withRenderingMode(.alwaysTemplate)
    }
}
