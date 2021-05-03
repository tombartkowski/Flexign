//
//  Icon.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class Icon: UIView {
    // MARK: Lifecycle

    public init(image: UIImage?, style: IconStyle = IconStyle()) {
        self.style = style
        super.init(frame: .zero)

        imageView.image = image
        originalImage = image
        imageView.contentMode = .scaleAspectFit

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
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
       
        widthAnchor.constraint(equalToConstant: style.size).isActive = true
        heightAnchor.constraint(equalToConstant: style.size).isActive = true

        translatesAutoresizingMaskIntoConstraints = false
        widthConstraint = imageView.widthAnchor.constraint(equalToConstant: style.size)
        widthConstraint?.isActive = true

        heightConstraint = imageView.heightAnchor.constraint(equalToConstant: style.size)
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

        if let originalImage = self.originalImage {
            
            let size = CGSize(width: style.size, height: style.size).insetBy(
                dx: style.padding,
                dy: style.padding
            )
            let aspectRatio = originalImage.size.width / originalImage.size.height
            var newSize: CGSize
            if originalImage.size.width >= originalImage.size.height {
                newSize = CGSize(width: size.width, height: size.width / aspectRatio)
            } else {
                newSize = CGSize(width: size.width * aspectRatio, height: size.width)
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
            imageView.image = resizedImage?.withRenderingMode(.alwaysOriginal)
        case let .tinted(color):
            imageView.image = resizedImage?.withRenderingMode(.alwaysTemplate)
            tintColor = color
        }
    }

    // MARK: Public

    public func apply(style: IconStyle) {
        apply(style: style.viewStyle)
    }

    // MARK: Private

    private let imageView = UIImageView()
    private var originalImage: UIImage?
    private var widthConstraint: NSLayoutConstraint?
    private var heightConstraint: NSLayoutConstraint?
}
