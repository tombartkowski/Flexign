# Label

`Label` is a core component to display text content. It's a `UILabel` subclass that is automatically styled with a provided `LabelStyle`.

#### Usage

```swift
let label = Label(style: .styleWith(font: .header1))
```

#### Details

To create a `Label` use the default initializer.

```swift
Label.init(text: String? = nil, style: LabelStyle = LabelStyle.default.paragraph)
```

##### LabelStyle

Styling a `Label` is done by providing a `LabelStyle`.

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

Flexign comes with handy default `LabelStyles`.

```swift
extension LabelStyle {
  enum `default` {
    public static let header1 = LabelStyle(font: .header1)
    public static let header2 = LabelStyle(font: .header2)
    public static let header3 = LabelStyle(font: .header3)
    public static let headline = LabelStyle(font: .headline)
    public static let subheadline = LabelStyle(
      textColor: .system(.secondaryLabel),
      font: .subheadline
    )
    public static let paragraph = LabelStyle()
    public static let footnote = LabelStyle(
      textColor: .system(.tertiaryLabel),
      font: .footnote
    )
  }
}
```
