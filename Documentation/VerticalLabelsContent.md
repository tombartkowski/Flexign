# VerticalLabelsContent

`VerticalLabelsContent` is a layout component that makes it easy to create a common layout of two `Label`s stacked vertically.

#### Usage

```swift
//from quick example
let labelsContent = VerticalLabelsContent()
labelsContent.topLabel.text = "John Doe"
labelsContent.bottomLabel.text = "You should try Flexign. It's super cool."
```

<img src="Assets/horizontalrowlayout.png" width=420/>

#### Details

To create a `VerticalLabelsContent` use the default initializer.

```swift
VerticalLabelsContent.init(
  style: VerticalLabelsContentStyle = VerticalLabelsContentStyle
  .default
  .headlineSubheadline
)
```

##### VerticalLabelsContentStyle

Styling a `VerticalLabelsContent` is done by providing a `VerticalLabelsContentStyle`.

```swift
struct VerticalLabelsContentStyle {
  let viewStyle: ViewStyle
  let topLabelStyle: LabelStyle
  let bottomLabelStyle: LabelStyle
  let spacing: CGFloat

  init(
    viewStyle: ViewStyle = .default,
    topLabelStyle: LabelStyle = .styleWith(font: .headline),
    bottomLabelStyle: LabelStyle = .styleWith(font: .subheadline),
    spacing: CGFloat = Padding.p1
  ) {
    self.viewStyle = viewStyle
    self.topLabelStyle = topLabelStyle
    self.bottomLabelStyle = bottomLabelStyle
    self.spacing = spacing
  }
}
```
