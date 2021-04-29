//
//  HorizontalListRow.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

open class HorizontalListRow<Media: UIView, Content: UIView, Extra: UIView>: UIView {
    // MARK: Lifecycle

    public init(
        media: Media? = nil,
        content: Content? = nil,
        extra: Extra? = nil,
        style: HorizontalListRowStyle? = nil
    ) {
        self.style = style
        super.init(frame: .zero)

        self.media = media
        self.content = content
        self.extra = extra

        layoutView()
        apply(style: style)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Open

    open var style: HorizontalListRowStyle?

    open var media: Media?
    open var content: Content?
    open var extra: Extra?

    open var separator = Separator()

    open func layoutView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(
            equalTo: topAnchor,
            constant: style?.verticalPadding ?? Padding.p5.value
        ).isActive = true
        bottomAnchor.constraint(
            equalTo: stackView.bottomAnchor,
            constant: style?.verticalPadding ?? Padding.p5.value
        ).isActive = true
        stackView.leadingAnchor.constraint(
            equalTo: leadingAnchor,
            constant: style?.horizontalPadding ?? 0
        ).isActive = true
        trailingAnchor.constraint(
            equalTo: stackView.trailingAnchor,
            constant: style?.horizontalPadding ?? 0
        ).isActive = true

        if let media = media {
            stackView.addArrangedSubview(media)
        }
        if let content = content {
            stackView.addArrangedSubview(content)
        }
        if let extra = extra {
            stackView.addArrangedSubview(extra)
        }

        addSubview(separator)
    }

    open func apply(style: HorizontalListRowStyle?) {
        apply(style: style?.viewStyle)
        separator.apply(style: style?.separatorStyle)

        stackView.spacing = style?.itemsSpacing ?? Padding.p6.value
        var leadingAnchor: NSLayoutXAxisAnchor?
        switch style?.leadingSeparatorPosition {
        case .container(.leading):
            leadingAnchor = self.leadingAnchor
        case .container(.trailing):
            leadingAnchor = self.trailingAnchor
        case .media(.leading):
            leadingAnchor = media?.leadingAnchor
        case .media(.trailing):
            leadingAnchor = media?.trailingAnchor
        case .content(.leading):
            leadingAnchor = content?.leadingAnchor
        case .content(.trailing):
            leadingAnchor = content?.trailingAnchor
        case .extra(.leading):
            leadingAnchor = extra?.leadingAnchor
        case .extra(.trailing):
            leadingAnchor = extra?.trailingAnchor
        default:
            break
        }

        var trailingAnchor: NSLayoutXAxisAnchor?
        switch style?.leadingSeparatorPosition {
        case .container(.leading):
            trailingAnchor = self.leadingAnchor
        case .container(.trailing):
            trailingAnchor = self.trailingAnchor
        case .media(.leading):
            trailingAnchor = media?.leadingAnchor
        case .media(.trailing):
            trailingAnchor = media?.trailingAnchor
        case .content(.leading):
            trailingAnchor = content?.leadingAnchor
        case .content(.trailing):
            trailingAnchor = content?.trailingAnchor
        case .extra(.leading):
            trailingAnchor = extra?.leadingAnchor
        case .extra(.trailing):
            trailingAnchor = extra?.trailingAnchor
        default:
            break
        }
        
        separator.isHidden = style?.separatorVisible ?? true
        separator.removeConstraints(separator.constraints.filter { $0.firstAttribute != .height })
        separator.leadingAnchor.constraint(equalTo: leadingAnchor ?? self.leadingAnchor).isActive = true
        (trailingAnchor ?? self.trailingAnchor).constraint(equalTo: separator.trailingAnchor).isActive = true
        separator.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    // MARK: Internal

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()
}
