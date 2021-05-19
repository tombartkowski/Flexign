//
//  Separator.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Separator: UIView {
    // MARK: Lifecycle

    public init(style: SeparatorStyle = SeparatorStyle()) {
        self.style = style
        super.init(frame: .zero)

        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 0.33).isActive = true
        apply(style: style)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Open

    open var style: SeparatorStyle

    // MARK: Public

    public func apply(style: SeparatorStyle) {
        backgroundColor = style.backgroundColor
        isHidden = !style.visible
    }
}
