//
//  VerticalLabelsContent.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public class VerticalLabelsContent: UIView {
    // MARK: Lifecycle

    public init(style: VerticalLabelsContentStyle? = nil) {
        self.style = style
        super.init(frame: .zero)

        layoutView()
        apply(style: style)
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: Open

    open var style: VerticalLabelsContentStyle?

    open var topLabel = Label()
    open var bottomLabel = Label()

    open func layoutView() {
        translatesAutoresizingMaskIntoConstraints = false
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false

        topLabel.setContentCompressionResistancePriority(UILayoutPriority(999), for: .vertical)
        bottomLabel.setContentCompressionResistancePriority(UILayoutPriority(998), for: .vertical)

        topLabel.setContentCompressionResistancePriority(UILayoutPriority(249), for: .horizontal)
        bottomLabel.setContentCompressionResistancePriority(UILayoutPriority(248), for: .horizontal)

        topLabel.setContentHuggingPriority(UILayoutPriority(249), for: .horizontal)
        bottomLabel.setContentHuggingPriority(UILayoutPriority(248), for: .horizontal)

        addSubview(topLabel)
        addSubview(bottomLabel)

        topLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        trailingAnchor.constraint(equalTo: topLabel.trailingAnchor).isActive = true

        spacing = bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor)
        spacing?.isActive = true

        bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: bottomLabel.bottomAnchor).isActive = true
        trailingAnchor.constraint(equalTo: bottomLabel.trailingAnchor).isActive = true
    }

    open func apply(style: VerticalLabelsContentStyle?) {
        apply(style: style?.viewStyle)
        topLabel.apply(style: style?.topLabelStyle)
        bottomLabel.apply(style: style?.bottomLabelStyle)
        spacing?.constant = (style?.spacing ?? Padding.p1)
        layoutIfNeeded()
    }

    // MARK: Private

    private var spacing: NSLayoutConstraint?
}
