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
        style: HorizontalListRowStyle = HorizontalListRowStyle.Default.basic
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

    open var style: HorizontalListRowStyle
    open var media: Media?
    open var content: Content?
    open var extra: Extra?
    open var separator = Separator()

    open func layoutView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor
            .constraint(equalTo: topAnchor, constant: style.padding.top).isActive = true
        stackView.leadingAnchor
            .constraint(equalTo: leadingAnchor, constant: style.padding.left).isActive = true
        bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: style.padding.bottom)
            .isActive = true
        trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: style.padding.right)
            .isActive = true

        if let media = media { stackView.addArrangedSubview(media) }
        if let content = content { stackView.addArrangedSubview(content) }
        if let extra = extra { stackView.addArrangedSubview(extra) }

        addSubview(separator)
        separator.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    open func apply(style: HorizontalListRowStyle) {
        apply(style: style.viewStyle)
        separator.apply(style: style.separatorStyle)
        stackView.spacing = style.itemsSpacing

        let leadingAnchor = anchorFor(style.leadingSeparatorPosition) ?? self.leadingAnchor
        let trailingAnchor = anchorFor(style.trailingSeparatorPosition) ?? self.trailingAnchor

        separator.isHidden = style.separatorVisible
        separator.removeConstraints(
            separator.constraints
                .filter { $0.firstAttribute != .height || $0.firstAttribute != .bottom }
        )
        separator.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: separator.trailingAnchor).isActive = true
    }

    // MARK: Internal

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()

    // MARK: Private

    private func anchorFor(
        _ separatorPosition: HorizontalListRowStyle
            .SeparatorPosition
    ) -> NSLayoutXAxisAnchor? {
        var anchor: NSLayoutXAxisAnchor?
        switch separatorPosition {
        case .container(.leading):
            anchor = leadingAnchor
        case .container(.trailing):
            anchor = trailingAnchor
        case .media(.leading):
            anchor = media?.leadingAnchor
        case .media(.trailing):
            anchor = media?.trailingAnchor
        case .content(.leading):
            anchor = content?.leadingAnchor
        case .content(.trailing):
            anchor = content?.trailingAnchor
        case .extra(.leading):
            anchor = extra?.leadingAnchor
        case .extra(.trailing):
            anchor = extra?.trailingAnchor
        }
        return anchor
    }
}
