//
//  Label.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

open class Label: UILabel {
    // MARK: Lifecycle

    public init(text: String? = nil, style: LabelStyle? = nil) {
        self.style = style
        super.init(frame: .zero)
        apply(style: style)

        adjustsFontForContentSizeCategory = true
        self.text = text
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError()
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        updateWithStyle(style: style?.viewStyle)
    }

    // MARK: Open

    open var style: LabelStyle?
}
