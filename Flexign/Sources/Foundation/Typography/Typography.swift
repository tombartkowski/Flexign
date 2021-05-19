//
//  Typography.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension UIFont {
    class var header1: UIFont { UIFont.preferredFont(for: .title1, weight: .bold) }
    class var header2: UIFont { UIFont.preferredFont(for: .title2, weight: .bold) }
    class var header3: UIFont { UIFont.preferredFont(for: .title3, weight: .semibold) }
    class var headline: UIFont { UIFont.preferredFont(for: .headline, weight: .medium) }
    class var subheadline: UIFont { UIFont.preferredFont(for: .subheadline, weight: .medium) }
    class var paragraph: UIFont { UIFont.preferredFont(for: .body, weight: .regular) }
    class var callout: UIFont { UIFont.preferredFont(for: .callout, weight: .regular) }
    class var footnote: UIFont { UIFont.preferredFont(for: .footnote, weight: .regular) }
    class var caption: UIFont { UIFont.preferredFont(for: .caption1, weight: .regular) }
}
