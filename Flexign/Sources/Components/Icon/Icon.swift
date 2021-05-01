//
//  Icon.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Icon: UIImageView {
    // MARK: Lifecycle

    public init(image: UIImage?, style: IconStyle = IconStyle()) {
        self.style = style
        super.init(frame: .zero)

        self.image = image
        originalImage = image
        contentMode = .center

        layoutView()
        apply(style: style)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Open

    open var style: IconStyle

    open func layoutView() {
        translatesAutoresizingMaskIntoConstraints = false
        widthConstraint = widthAnchor.constraint(equalToConstant: style.size)
        widthConstraint?.isActive = true

        heightConstraint = heightAnchor.constraint(equalToConstant: style.size)
        heightConstraint?.isActive = true
    }

    override open func layoutSubviews() {
        super.layoutSubviews()
        updateWithStyle(style: style.viewStyle)

        let resizedImage = originalImage?
            .imageForSize(CGSize(width: style.size, height: style.size).insetBy(
                dx: style.padding,
                dy: style.padding
            ))

        if let originalImage = self.originalImage, style.viewStyle.cornerRadius == CornerRadius.none {
            let aspectRatio = originalImage.size.width / originalImage.size.height
            var newSize: CGSize
            if originalImage.size.width >= originalImage.size.height {
                newSize = CGSize(width: style.size, height: style.size / aspectRatio)
            } else {
                newSize = CGSize(width: style.size * aspectRatio, height: style.size)
            }
            if newSize.width != widthConstraint?.constant {
                widthConstraint?.constant = newSize.width
                setNeedsLayout()
            }
            if newSize.height != heightConstraint?.constant {
                heightConstraint?.constant = newSize.height
                setNeedsLayout()
            }
        }

        switch style.color {
        case .original:
            image = resizedImage?.withRenderingMode(.alwaysOriginal)
        case let .tinted(UIColor):
            image = resizedImage?.withRenderingMode(.alwaysTemplate)
            tintColor = UIColor
        }
    }

    // MARK: Public

    public func apply(style: IconStyle) {
        apply(style: style.viewStyle)
    }

    // MARK: Private

    private var originalImage: UIImage?
    private var widthConstraint: NSLayoutConstraint?
    private var heightConstraint: NSLayoutConstraint?
}
