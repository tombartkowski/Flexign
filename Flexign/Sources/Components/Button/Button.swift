//
//  Button.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

// MARK: - Button

open class Button: UIButton {
    // MARK: Lifecycle

    public init(
        title: String? = nil,
        image: UIImage? = nil,
        style: ButtonStyle = ButtonStyle.Default.filledPrimary
    ) {
        self.style = style
        super.init(frame: .zero)
        apply(style: style)

        contentVerticalAlignment = .center
        if #available(iOS 11.0, *) {
            adjustsImageSizeForAccessibilityContentSizeCategory = true
        }
        adjustsImageWhenHighlighted = false
        setImage(image?.buttonImage(for: ButtonTypography.button), for: .normal)

        titleLabel?.adjustsFontForContentSizeCategory = true
        setTitle(title, for: .normal)
    }

    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError()
    }

    // MARK: Open

    open var style: ButtonStyle

    override open var isEnabled: Bool {
        didSet {
            self.alpha = isEnabled ? 1 : 0.4
        }
    }

    override open func layoutSubviews() {
        super.layoutSubviews()
        applyCornerRadius(style.viewStyle?.cornerRadius)
    }

    // MARK: Fileprivate

    fileprivate let lightenBackgroundAnimator = UIViewPropertyAnimator(
        duration: AnimationDuration.microFast.timeInterval,
        timingParameters: AnimationTiming.easeOut.curve
    )

    fileprivate let restoreOriginalBackgroundAnimator = UIViewPropertyAnimator(
        duration: AnimationDuration.microFast.timeInterval,
        timingParameters: AnimationTiming.easeOut.curve
    )
}

public extension Button {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        animate(isHighlighted: true)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        animate(isHighlighted: false)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        animate(isHighlighted: false)
    }

    private func animate(isHighlighted _: Bool) {
        if isHighlighted {
            let highlightedColor: UIColor = style.highlightedColor?.uiColor ?? .clear
            animator(
                lightenBackgroundAnimator,
                animateTo: highlightedColor,
                withOppositeAnimator: restoreOriginalBackgroundAnimator
            )
        } else {
            animator(
                restoreOriginalBackgroundAnimator,
                animateTo: (style.viewStyle?.backgroundColor?.uiColor)!,
                withOppositeAnimator: lightenBackgroundAnimator
            )
        }
    }

    private func animator(
        _ animator: UIViewPropertyAnimator,
        animateTo color: UIColor,
        withOppositeAnimator oppositeAnimator: UIViewPropertyAnimator

    ) {
        oppositeAnimator.stopAnimation(true)
        animator.addAnimations { [weak self] in
            self?.backgroundColor = color
        }
        animator.startAnimation()
    }
}
