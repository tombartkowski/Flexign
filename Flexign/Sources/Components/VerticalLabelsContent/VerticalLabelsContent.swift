//
//  VerticalLabelsContent.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 29/04/2021.
//

public class VerticalLabelsContent: UIStackView {
    // MARK: Lifecycle

    public init(style: VerticalLabelsContentStyle? = nil) {
        self.style = style
        super.init(frame: .zero)

        axis = .vertical
        alignment = .top
        distribution = .equalSpacing
        layoutView()
        apply(style: style)
    }

    public required init(coder: NSCoder) {
        super.init(coder: coder)
    }

    // MARK: Open

    open var style: VerticalLabelsContentStyle?

    open var topLabel = Label()
    open var bottomLabel = Label()

    open func layoutView() {
        translatesAutoresizingMaskIntoConstraints = false
        addArrangedSubview(topLabel)
        addArrangedSubview(bottomLabel)
    }

    open func apply(style: VerticalLabelsContentStyle?) {
        apply(style: style?.viewStyle)
        topLabel.apply(style: style?.topLabelStyle)
        bottomLabel.apply(style: style?.bottomLabelStyle)
        spacing = style?.spacing ?? Padding.p1
    }
}
