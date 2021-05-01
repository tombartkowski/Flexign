//
//  IconStyle+Default.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public extension IconStyle {
    enum Default {
        public static let greySquircleMd = IconStyle(
            viewStyle: ViewStyle.colored(.system(.grey5), cornerRadius: .squircle),
            size: IconSize.Default.lg,
            color: .tinted(.system(.label)),
            padding: Padding.p2
        )
    }
}
