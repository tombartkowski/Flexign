//
//  UIColor+System.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public extension UIColor {
    class func system(_ color: SystemColor) -> UIColor {
        switch color {
        case .red:
            return UIColor.systemColors.red
        case .orange:
            return UIColor.systemColors.orange
        case .yellow:
            return UIColor.systemColors.yellow
        case .green:
            return UIColor.systemColors.green
        case .teal:
            return UIColor.systemColors.teal
        case .blue:
            return UIColor.systemColors.blue
        case .purple:
            return UIColor.systemColors.purple
        case .pink:
            return UIColor.systemColors.pink
        case .indigo:
            return UIColor.systemColors.indigo

        case .background:
            return UIColor.systemColors.background
        case .secondaryBackground:
            return UIColor.systemColors.secondaryBackground
        case .tertiaryBackground:
            return UIColor.systemColors.tertiaryBackground

        case .fill:
            return UIColor.systemColors.fill
        case .secondaryFill:
            return UIColor.systemColors.secondaryFill
        case .tertiaryFill:
            return UIColor.systemColors.tertiaryFill
        case .quaternaryFill:
            return UIColor.systemColors.quaternaryFill

        case .grey:
            return UIColor.systemColors.grey
        case .grey2:
            return UIColor.systemColors.grey2
        case .grey3:
            return UIColor.systemColors.grey3
        case .grey4:
            return UIColor.systemColors.grey4
        case .grey5:
            return UIColor.systemColors.grey5
        case .grey6:
            return UIColor.systemColors.grey6

        case .groupedBackground:
            return UIColor.systemColors.groupedBackground
        case .secondaryGrupedBackground:
            return UIColor.systemColors.secondaryGrupedBackground
        case .tertiaryGroupedBackground:
            return UIColor.systemColors.tertiaryGroupedBackground

        case .label:
            return UIColor.systemColors.label
        case .secondaryLabel:
            return UIColor.systemColors.secondaryLabel
        case .tertiaryLabel:
            return UIColor.systemColors.tertiaryLabel
        case .quaternaryLabel:
            return UIColor.systemColors.quaternaryLabel

        case .separator:
            return UIColor.systemColors.separator
        case .opaqueSeparator:
            return UIColor.systemColors.opaqueSeparator
        }
    }
}

extension UIColor {
    enum systemColors {}
}

// MARK: - SystemColor

public enum SystemColor {
    case red
    case orange
    case yellow
    case green
    case teal
    case blue
    case purple
    case pink
    case indigo

    case background
    case secondaryBackground
    case tertiaryBackground

    case fill
    case secondaryFill
    case tertiaryFill
    case quaternaryFill

    case grey
    case grey2
    case grey3
    case grey4
    case grey5
    case grey6

    case groupedBackground
    case secondaryGrupedBackground
    case tertiaryGroupedBackground

    case label
    case secondaryLabel
    case tertiaryLabel
    case quaternaryLabel

    case separator
    case opaqueSeparator
}
