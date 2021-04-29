//
//  HorizontalListRowStyle.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public struct HorizontalListRowStyle {
    // MARK: Lifecycle

    public init(
        viewStyle: ViewStyle? = nil,
        separatorStyle: SeparatorStyle? = nil,
        itemsSpacing: CGFloat? = nil,
        horizontalPadding: CGFloat? = nil,
        verticalPadding: CGFloat? = nil,
        separatorVisible: Bool? = nil,
        leadingSeparatorPosition: SeparatorPosition? = nil,
        trailingSeparatorPosition: SeparatorPosition? = nil
    ) {
        self.viewStyle = viewStyle
        self.separatorStyle = separatorStyle
        self.itemsSpacing = itemsSpacing
        self.horizontalPadding = horizontalPadding
        self.verticalPadding = verticalPadding
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

    public let viewStyle: ViewStyle?
    public let separatorStyle: SeparatorStyle?

    public let itemsSpacing: CGFloat?
    public let horizontalPadding: CGFloat?
    public let verticalPadding: CGFloat?
    public let separatorVisible: Bool?
    public let leadingSeparatorPosition: SeparatorPosition?
    public let trailingSeparatorPosition: SeparatorPosition?
}
