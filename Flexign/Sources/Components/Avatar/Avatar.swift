//
//  Avatar.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Avatar: UIImageView {
    // MARK: Lifecycle

    public init(style: ViewStyle = ViewStyle.colored(.system(.grey6), cornerRadius: .full)) {
        self.style = style
        super.init(frame: .zero)

        contentMode = .scaleAspectFill
        layer.masksToBounds = true

        apply(style: style)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Open

    open var style: ViewStyle

    override open func layoutSubviews() {
        super.layoutSubviews()
        updateWithStyle(style: style)
    }
}
