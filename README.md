<p align="center">
  <a href="https://raw.githubusercontent.com/tombartkowski/Flexign">
    <img src="https://raw.githubusercontent.com/tombartkowski/Flexign/master/logo.svg" alt="Logo" width="220" height="150">
  </a>

  <p align="center">
    Flexible & extendable design system with ready-to-use components for iOS written in Swift.
    <br />
    <a href="#documentation"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="#features">Features</a>
    <a href="#quick-example">Example</a>
    <a href="#usage">Usage</a>
    <a href="#installation">Installation</a>
  </p>
</p>

<p align="center">
    <a href="https://developer.apple.com/swift/"><img alt="Swift 5.2" src="https://img.shields.io/badge/swift-5.2-orange.svg?style=flat"></a>
    <a href="https://github.com/tombartkowski/Flexign/LICENSE"><img alt="License" src="https://img.shields.io/github/license/tombartkowski/Flexign"></a>
    <a href="https://github.com/tombartkowski/Flexign"><img alt="Build Status" src="https://img.shields.io/github/last-commit/tombartkowski/Flexign"></a>
</p>

<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#features">Features</a>
    </li>
    <li>
      <a href="#quick-example">Quick Example</a>
    </li>
    <li>
      <a href="#installation">Installation</a>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#documentation">Documentation</a></li>
    <li><a href="#todo">Todo</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

## Features

- :white_check_mark: Complete typography set,
- :white_check_mark: Full support for the font size accessibility,
- :white_check_mark: System Colors with < iOS 13.0 support,
- :white_check_mark: Dark mode,
- :white_check_mark: Spacings & paddings,
- :white_check_mark: Animation,
- :white_check_mark: Corner radii with popular in the Apple ecosystem [Squircle](https://en.wikipedia.org/wiki/Squircle) support,
- :white_check_mark: Components configured using declarative `ViewStyle`'s ,
- :white_check_mark: Button with many color variations, a highlight animation and left / right icons,
- :white_check_mark: Label with beautiful presets and full accessibility support,
- :white_check_mark: Icons with many sizes, shapes and forms,
- :white_check_mark: Robust and extensible layouts for rapid development.

## Quick Example

Below is a screenshot of an example view created using Flexign.

<img src="https://github.com/tombartkowski/Flexign/blob/master/quick-example.png?raw=true" alt="Logo" width="500px">

#### Code

```swift
let headerLabel = Label(text: "Flexign demo", style: .styleWith(font: .header2))

let avatar = Avatar()
avatar.image = UIImage(named: "profile")

let labelsContent = VerticalLabelsContent()
labelsContent.topLabel.text = "John Doe"
labelsContent.bottomLabel.text = "You should try Flexign. It's super cool."

let icon = Icon(
  image: UIImage(systemName: "plus.bubble.fill"),
  style: IconStyle(
    viewStyle: .colored(.system(.blue), cornerRadius: .squircle),
    size: IconSize.default.lg,
    color: IconStyle.Color.tinted(.white),
    padding: Padding.p2
  )
)

let chatRow = HorizontalListRow(
  media: avatar,
  content: labelsContent,
  extra: icon,
  style: HorizontalListRowStyle(itemsSpacing: Padding.p4)
)

let noThanksButton = Button(
  title: "No thanks",
  image: UIImage(systemName: "xmark"),
  style: .with(colorStyle: .lightFillDarkText(.system(.blue)))
)

let getStartedButton = Button(
  title: "Get started",
  image: UIImage(systemName: "hand.thumbsup.fill"),
  style: .with(colorStyle: .darkFillWhiteText(.system(.blue)))
)
```

## Installation

### Requirements

- Deployment target iOS 10.0+
- Swift 5+
- Xcode 10+

#### CocoaPods

Flexign is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Flexign'
```

## Usage

After successful installation you can instantly start creating beautiful, consistent and reusable views.

`Flexign` comes with pre-configured defaults that allow you to jump straight to the code.

```swift
import Flexign
```

After doing so you can begin adding subviews with `Flexign`.

#### Creating a label.

```swift
let label = Label()
```

In order to change the appearance of the label you can pass a `LabelStyle` instance in the constructor.

```swift
let labelStyle = LabelStyle()
let label = Label(style: labelStyle)

// LabelStyle definition.
struct LabelStyle {
  let viewStyle: ViewStyle
  let textAlignment: NSTextAlignment
  let textColor: UIColor
  let numberOfLines: Int
  let font: UIFont

  init(
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

#### ViewStyles

`Flexign` uses `ViewStyles` in every component so it's a good idea to create your own reusable `ViewStyles` that fit your design needs.

```swift
enum MyLabelStyle {
    public static let header = LabelStyle(font: .header1)
    public static let headline = LabelStyle(font: .headline)
    public static let paragraph = LabelStyle()
}
```

`Flexign` comes with many convenience factory methods that simplify creation of the most common styles for all components.

```swift
let label = Label(style: .styleWith(font: .callout, color: .red))
let button = Button(style:
  .with(
    size: ButtonStyle.default.md,
    colorStyle: .lightFillDarkText(.yellow),
    cornerRadius: .none
  )
)
```

There are also many hand-crafted presets that you can use out-of-the-box.

```swift
let label = Label(style: LabelStyle.default.subheadline)
```

#### Learn More

To explore how to fully use and customize `Flexign` for you needs, refer to the [Documentation]() where you can find detailed description, usage guide and extension tips for every element and component of `Flexign`.

## Documentation

The [Documentation]() describes the details, usage guide and extension tips for every element and component of `Flexign`.

You can jump to the specific topic using the links below.

### Foundation

1. [Color]()
2. [Typography]()
3. [Spacing]()
4. [Typography]()
5. [Animation]()
6. [Corner Radius]()
7. [ViewStyle]()

### Components

1. [Label]()
2. [Button]()
3. [Icon]()
4. [Avatar]()
5. [Separator]()
6. [HorizontalRowLayout]()
7. [VerticalLabelsContent]()

## Todo

- [ ] Card component,
- [ ] EmptyState component,
- [ ] Additional presets for Button and Label,
- [ ] Configuration using `.yaml` file.

### In Progress

- [ ] Shadow and elevation.

### Done ✓

- [x] Release version 0.1.0.

## License

Flexign is available under the MIT license. See the LICENSE file for more info.

## Contact

Tomasz Bartkowski - [@tombartkowski](https://twitter.com/bartkowskitom) - tomaszbartkowski.studio@gmail.com

## Acknowledgements

- [@neobeppe](https://github.com/neobeppe) for [Squircle](https://github.com/neobeppe/Squircle) implementation.
