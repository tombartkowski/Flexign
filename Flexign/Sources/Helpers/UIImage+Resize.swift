//
//  UIImage+Resize.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

extension UIImage {
    func imageForSize(_ size: CGSize) -> UIImage {
        let aspectRatio = self.size.width / self.size.height
        var newSize: CGSize
        if self.size.width >= self.size.height {
            newSize = CGSize(width: size.width, height: size.width / aspectRatio)
        } else {
            newSize = CGSize(width: size.width * aspectRatio, height: size.width)
        }
        return UIGraphicsImageRenderer(size: newSize)
            .image { _ in
                self.draw(in: CGRect(origin: .zero, size: newSize))
            }
    }
}
