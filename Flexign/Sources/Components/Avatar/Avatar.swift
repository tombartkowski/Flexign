//
//  Avatar.swift
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Avatar: UIImageView {
    
    open var style: ViewStyle?
    
    public init(style: ViewStyle? = nil) {
        super.init(frame: .zero)
        self.style = style
        apply(style: style)
        contentMode = .scaleAspectFill
        layer.masksToBounds = true
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        updateWithStyle(style: style)
    }
    
    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
