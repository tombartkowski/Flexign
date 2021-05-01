//
//  Icon.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Icon: UIImageView {
    // MARK: Lifecycle

    public init(image: UIImage?, style: IconStyle?) {
        self.style = style
        originalImage = image
        super.init(frame: .zero)
        layoutView()
        contentMode = .center

        self.image = image
        apply(style: style)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Open

    open var style: IconStyle?

    open func layoutView() {
        translatesAutoresizingMaskIntoConstraints = false
        let dimension = style?.size?.value ?? IconStyle.Default.Size.md.value
        widthConstraint = widthAnchor.constraint(equalToConstant: dimension)
        widthConstraint?.isActive = true

        heightConstraint = heightAnchor.constraint(equalToConstant: dimension)
        heightConstraint?.isActive = true
    }

    override open func layoutSubviews() {
        super.layoutSubviews()
        updateWithStyle(style: style?.viewStyle)

        let dimension = style?.size?.value ?? IconStyle.Default.Size.md.value
        let resizedImage = originalImage?
            .imageForSize(CGSize(width: dimension, height: dimension).insetBy(
                dx: style?.padding ?? 0,
                dy: style?.padding ?? 0
            ))

        switch style?.variant {
        case .plain:
            image = resizedImage?.withRenderingMode(.alwaysOriginal)
        case let .tinted(UIColor):
            image = resizedImage?.withRenderingMode(.alwaysTemplate)
            tintColor = UIColor
        default:
            break
        }
    }

    // MARK: Public

    public func apply(style: IconStyle?) {
        apply(style: style?.viewStyle)
    }

    // MARK: Private

    private let originalImage: UIImage?

    private var widthConstraint: NSLayoutConstraint?
    private var heightConstraint: NSLayoutConstraint?
}
