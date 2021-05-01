//
//  Label.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

open class Label: UILabel {
    // MARK: Lifecycle

    public init(text: String? = nil, style: LabelStyle = LabelStyle.Default.paragraph) {
        self.style = style
        super.init(frame: .zero)

        adjustsFontForContentSizeCategory = true
        self.text = text
        
        apply(style: style)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError()
    }

    // MARK: Open

    open var style: LabelStyle

    override open func layoutSubviews() {
        super.layoutSubviews()
        updateWithStyle(style: style.viewStyle)
    }
}
