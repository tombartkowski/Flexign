//
//  UIImage+ButtonImage.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIImage {
    func buttonImage(for font: UIFont) -> UIImage {
        let pointSize = font.pointSize
        let aspectRatio = self.size.width / self.size.height
        let size = CGSize(width: pointSize * aspectRatio, height: pointSize)
        return imageForSize(size).withRenderingMode(.alwaysTemplate)
    }
}
