# Animation

Flexign makes it easy to create beautiful and consistent animation in your app.

The animation system was designed to be used with `UIViewPropertyAnimator` that allow for great flexibility.

#### Usage

```swift
let animator = UIViewPropertyAnimator(
  duration: AnimationDuration.microFast.timeInterval,
  timingParameters: AnimationTiming.easeOut.curve
)
animator.addAnimations {
    someView.backgroundColor = someColor
}
animator.startAnimation()
```

### Default animation

The default animation parameters that ship with Flexign are listed below. It contains durations for micro animation such as button highlighting, and macro durations for things like view transitions.

##### AnimationDuration

```swift
enum AnimationDuration: TimeInterval {
    case microFast = 0.08
    case microRegular = 0.16
    case microSlow = 0.24

    case macroFast = 0.4
    case macroRegular = 0.5
    case macroSlow = 0.6
}
```

##### AnimationTiming

```swift
public enum AnimationTiming {
    case easeIn
    case easeOut
    case easeInOut
    case spring(velocity: CGVector)

    public var curve: UITimingCurveProvider {
        switch self {
        case .easeIn:
            return UICubicTimingParameters(
              controlPoint1: CGPoint(x: 0.5, y: 0),
              controlPoint2: CGPoint(x: 1, y: 1)
            )
        case .easeOut:
            return UICubicTimingParameters(
              controlPoint1: CGPoint(x: 0, y: 0),
              controlPoint2: CGPoint(x: 0.4, y: 1)
            )
        case .easeInOut:
            return UICubicTimingParameters(
              controlPoint1: CGPoint(x: 0.45, y: 1),
              controlPoint2: CGPoint(x: 0.4, y: 1)
            )
        case let .spring(velocity):
            return UISpringTimingParameters(
              mass: 1.8,
              stiffness: 330,
              damping: 33,
              initialVelocity: velocity
            )
        }
    }
}
```
