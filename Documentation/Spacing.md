# Spacing

Flexign comes with a set of useful paddings and margins that make your layouts will feel consistent.

#### Usage

```swift
let padding: CGFloat = Padding.p2 // 5.0
let margin: CGFloat = Margin.sm // 12.0
```

### Default values

The default paddings and margins that ship with Flexign are listed below.

```swift
enum Padding {
  static let p1: CGFloat = 3
  static let p2: CGFloat = 5
  static let p3: CGFloat = 8
  static let p4: CGFloat = 12
  static let p5: CGFloat = 16
  static let p6: CGFloat = 20
  static let p7: CGFloat = 30
  static let p8: CGFloat = 42
}

enum Margin {
  static let sm: CGFloat = 12
  static let md: CGFloat = 16
  static let lg: CGFloat = 20
}
```

## Extending

There are many ways to provide your own values, for example you can define a new `enum`.

```swift
enum MyPadding {
  static let p1: CGFloat = 2
  static let p2: CGFloat = 5
  static let p3: CGFloat = 8
  static let p4: CGFloat = 12
  static let p5: CGFloat = 18
  static let p6: CGFloat = 24
  static let p7: CGFloat = 32
  static let p8: CGFloat = 40
}
```

Alternatively, you can extend the exisiting `Padding` or `Margins` enums to add more values.

```swift
extension Margin {
  static let xs: CGFloat = 8
  static let xl: CGFloat = 32
}
```
