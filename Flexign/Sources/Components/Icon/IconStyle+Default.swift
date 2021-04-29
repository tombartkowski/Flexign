//
//  IconStyle+Default.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension IconStyle {
    enum Default {
        public enum Size: IconSizeable {
            case xs
            case sm
            case md
            case lg
            case xl

            // MARK: Public

            public var value: CGFloat {
                switch self {
                case .xs:
                    return 16
                case .sm:
                    return 20
                case .md:
                    return 24
                case .lg:
                    return 30
                case .xl:
                    return 38
                }
            }
        }

        public static let secondarySquircleLg = IconStyle(
            viewStyle: ViewStyle(
                backgroundColor: BasicColor.primary,
                cornerRadius: CornerRadius.squircle
            ),
            size: Size.lg,
            variant: .tinted(BasicColor.white),
            padding: Padding.p2.value
        )
    }
}
