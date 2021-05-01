//
//  Typography.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension UIFont {
    enum `default` {
        static let header1 = UIFont.preferredFont(for: .title1, weight: .bold)
        static let header2 = UIFont.preferredFont(for: .title2, weight: .bold)
        static let header3 = UIFont.preferredFont(for: .title3, weight: .semibold)
        static let headline = UIFont.preferredFont(for: .headline, weight: .medium)
        static let subheadline = UIFont.preferredFont(for: .subheadline, weight: .regular)
        static let paragraph = UIFont.preferredFont(for: .body, weight: .regular)
        static let callout = UIFont.preferredFont(for: .callout, weight: .regular)
        static let footnote = UIFont.preferredFont(for: .footnote, weight: .regular)
    }
}
