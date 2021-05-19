# HorizontalListRow

`HorizontalListRow` is a highly customizable layout component that simplifies creation of common vertical lists.

#### Usage

```swift
//from quick example
let chatRow = HorizontalListRow(
  media: avatar,
  content: labelsContent,
  extra: icon,
  style: HorizontalListRowStyle(itemsSpacing: Padding.p4)
)
```

<img src="Assets/horizontalrowlayout.png" width=420/>

#### Details

To create a `HorizontalRowLayout` use the default initializer.

```swift
HorizontalRowLayout<Media: UIView, Content: UIView, Extra: UIView>
.init(
    media: Media? = nil,
    content: Content? = nil,
    extra: Extra? = nil,
    style: HorizontalRowLayoutStyle = HorizontalRowLayoutStyle.default.basic
)
```

##### HorizontalRowLayoutStyle

Styling a `HorizontalRowLayout` is done by providing a `HorizontalRowLayoutStyle`.

```swift
struct HorizontalRowLayoutStyle {
  enum SeparatorPosition {
    enum Side {
      case leading
      case trailing
    }
    case container(Side)
    case media(Side)
    case content(Side)
    case extra(Side)
  }

  let viewStyle: ViewStyle
  let separatorStyle: SeparatorStyle
  let itemsSpacing: CGFloat
  let padding: UIEdgeInsets
  let separatorVisible: Bool
  let leadingSeparatorPosition: SeparatorPosition
  let trailingSeparatorPosition: SeparatorPosition

  init(
    viewStyle: ViewStyle = .default,
    separatorStyle: SeparatorStyle = SeparatorStyle(),
    itemsSpacing: CGFloat = Padding.p4,
    padding: UIEdgeInsets = .zero,
    separatorVisible: Bool = false,
    leadingSeparatorPosition: SeparatorPosition = .content(.leading),
    trailingSeparatorPosition: SeparatorPosition = .extra(.trailing)
  ) {
    self.viewStyle = viewStyle
    self.separatorStyle = separatorStyle
    self.itemsSpacing = itemsSpacing
    self.padding = padding
    self.separatorVisible = separatorVisible
    self.leadingSeparatorPosition = leadingSeparatorPosition
    self.trailingSeparatorPosition = trailingSeparatorPosition
  }
}
```

This set of properties allows for almost unlimited customizability.

- `viewStyle` configures the background of the `HorizontalRowLayout`,
- `separatorStyle` configures the separator,
- `itemsSpacing` sets the spacing between the media, content and extra.
- `padding` sets the the padding of the content relative to parent (`HorizontalRowLayout`),
- `separatorVisible` is self-explanatory,
- `leadingSeparatorPosition` sets the leading anchor of the separator,
- `trailingSeparatorPosition` sets the trailing anchor of the separator.
