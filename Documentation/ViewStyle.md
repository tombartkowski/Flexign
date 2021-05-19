# ViewStyle

`ViewStyle` is a declarative way to create reusable, extendable and reusable styling for your views. By adopting this pattern you can define common styles in one place for easier maintainance and reusability.

#### Usage

```swift
let viewStyle = ViewStyle(
  backgroundColor: .system(.fill),
  cornerRadius: .rounded(8)
)
let view = UIView()
view.apply(viewStyle)
```

#### Details

The basic `ViewStyle` can be applied to any `UIView` subclass.
It is a `struct` defined as follows.

```swift
struct ViewStyle {
  let backgroundColor: UIColor
  let borderColor: UIColor?
  let borderWidth: CGFloat?
  let cornerRadius: CornerRadius

  init(
      backgroundColor: UIColor = UIColor.clear,
      borderColor: UIColor? = nil,
      borderWidth: CGFloat? = nil,
      cornerRadius: CornerRadius = .none
  ) {
      self.backgroundColor = backgroundColor
      self.borderColor = borderColor
      self.borderWidth = borderWidth
      self.cornerRadius = cornerRadius
  }
}
```

For a view that has more properties we can create a more complex `ViewStyle`. Here's how a `LabelStyle` looks like for the `UILabel`.

```swift
struct LabelStyle {
  let viewStyle: ViewStyle
  let textAlignment: NSTextAlignment
  let textColor: UIColor
  let numberOfLines: Int
  let font: UIFont

  public init(
      viewStyle: ViewStyle = .default,
      textAlignment: NSTextAlignment = .left,
      textColor: UIColor = .system(.label),
      numberOfLines: Int = 0,
      font: UIFont = .paragraph
  ) {
      self.viewStyle = viewStyle
      self.textAlignment = textAlignment
      self.textColor = textColor
      self.numberOfLines = numberOfLines
      self.font = font
  }
}
```

As you can see it contains the base `ViewStyle` and also additional properties that often vary such as `font` or `textColor`.

Flexign comes with many built-in `ViewStyle` types:

- `ViewStyle`
- `LabelStyle`
- `ButtonStyle`
- `IconStyle`
- `SeparatorStyle`

and a few more for more specific components.
