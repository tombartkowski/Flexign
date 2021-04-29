//
//  Separator.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Separator: UIView {
    // MARK: Lifecycle

    public init(style: SeparatorStyle? = nil) {
        super.init(frame: .zero)
        self.style = style
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 0.33).isActive = true
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Open

    open var style: SeparatorStyle?

    // MARK: Public

    public func apply(style: SeparatorStyle?) {
        backgroundColor = style?.backgroundColor?.uiColor ?? UIColor.system.opaqueSeparator
    }
}
