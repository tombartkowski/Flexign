# Icon

`Icon` provides a way to display helpful visuals that guide that make using your app more intuitive. It's a `UIView` subclass containig an `ImageView` that is styled with `IconStyle`.

#### Usage

```swift
//from quick example
let icon = Icon(
  image: UIImage(systemName: "plus.bubble.fill"),
  style: IconStyle(
    viewStyle: .colored(.system(.blue), cornerRadius: .squircle),
    size: IconSize.default.lg,
    color: IconStyle.Color.tinted(.white),
    padding: Padding.p2
  )
)
```

#### Details

To create an `Icon` use the default initializer.

```swift
Icon.init(image: UIImage?, style: IconStyle = IconStyle())
```

##### IconStyle

Styling an `Icon` is done by providing a `IconStyle`.

```swift
struct IconStyle {
  enum Color {
    case original
    case tinted(UIColor)
  }
  let viewStyle: ViewStyle
  let size: CGFloat
  let color: Color
  let padding: CGFloat

  init(
    viewStyle: ViewStyle = .default,
    size: CGFloat = IconSize.default.sm,
    color: Color = .tinted(.system(.label)),
    padding: CGFloat = 0
  ) {
    self.viewStyle = viewStyle
    self.size = size
    self.color = color
    self.padding = padding
  }
}
```

Flexign comes with handy default sizes for the icon.

```swift
public enum IconSize {
  public enum `default` {
    public static let xs: CGFloat = 16
    public static let sm: CGFloat = 20
    public static let md: CGFloat = 24
    public static let lg: CGFloat = 30
    public static let xl: CGFloat = 38
  }
}
```
