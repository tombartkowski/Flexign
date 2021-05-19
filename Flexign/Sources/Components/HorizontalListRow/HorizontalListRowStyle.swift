//
//  HorizontalRowLayoutStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public struct HorizontalRowLayoutStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle = .default,
        separatorStyle: SeparatorStyle = SeparatorStyle(),
        itemsSpacing: CGFloat = Padding.p4,
        padding: UIEdgeInsets = .zero,
        separatorVisible: Bool = false,
        leadingSeparatorPosition: SeparatorPosition = .content(.leading),
        trailingSeparatorPosition: SeparatorPosition = .extra(.trailing)
    ) {
        self.viewStyle = viewStyle
        self.separatorStyle = separatorStyle
        self.itemsSpacing = itemsSpacing
        self.padding = padding
        self.separatorVisible = separatorVisible
        self.leadingSeparatorPosition = leadingSeparatorPosition
        self.trailingSeparatorPosition = trailingSeparatorPosition
    }

    // MARK: Public

    public enum SeparatorPosition {
        case container(Side)
        case media(Side)
        case content(Side)
        case extra(Side)

        // MARK: Public

        public enum Side {
            case leading
            case trailing
        }
    }

    public let viewStyle: ViewStyle
    public let separatorStyle: SeparatorStyle
    public let itemsSpacing: CGFloat
    public let padding: UIEdgeInsets
    public let separatorVisible: Bool
    public let leadingSeparatorPosition: SeparatorPosition
    public let trailingSeparatorPosition: SeparatorPosition
}
