//
//  Typography.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public enum Typography: TypeRepresentable {
    case header1
    case header2
    case header3
    case headline
    case subheadline
    case paragraph
    case callout
    case footnote

    // MARK: Public

    public var font: UIFont {
        switch self {
        case .header1:
            return UIFont.preferredFont(for: .title1, weight: .bold)
        case .header2:
            return UIFont.preferredFont(for: .title2, weight: .bold)
        case .header3:
            return UIFont.preferredFont(for: .title3, weight: .semibold)
        case .headline:
            return UIFont.preferredFont(for: .headline, weight: .medium)
        case .subheadline:
            return UIFont.preferredFont(for: .subheadline, weight: .regular)
        case .paragraph:
            return UIFont.preferredFont(for: .body, weight: .regular)
        case .callout:
            return UIFont.preferredFont(for: .callout, weight: .regular)
        case .footnote:
            return UIFont.preferredFont(for: .footnote, weight: .regular)
        }
    }
}
