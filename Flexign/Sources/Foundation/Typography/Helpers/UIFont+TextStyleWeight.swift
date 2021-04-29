//
//  UIFont+TextStyleWeight.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

import UIKit

extension UIFont {
    static func preferredFont(for style: TextStyle, weight: Weight) -> UIFont {
        if #available(iOS 11.0, *) {
            let traits = UITraitCollection(preferredContentSizeCategory: .large)
            let desc = UIFontDescriptor.preferredFontDescriptor(withTextStyle: style, compatibleWith: traits)
            let font = UIFont.systemFont(ofSize: desc.pointSize, weight: weight)
            let metrics = UIFontMetrics(forTextStyle: style)
            return metrics.scaledFont(for: font)
        } else {
            return UIFont.preferredFont(forTextStyle: style)
        }
    }
}
