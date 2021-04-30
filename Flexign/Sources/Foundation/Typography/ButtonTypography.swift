//
//  ButtonTypography.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum ButtonTypography: TypeRepresentable {
    case button
    case buttonSmall
    case buttonText

    public var font: UIFont {
        switch self {
        case .button:
            return UIFont.preferredFont(for: .callout, weight: .semibold)
        case .buttonSmall:
            return UIFont.preferredFont(for: .subheadline, weight: .semibold)
        case .buttonText:
            return UIFont.preferredFont(for: .callout, weight: .regular)
        }
    }
}

