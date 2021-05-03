# Typography

Flexign comes with a set of hand-crafted fonts for every use case you might encounter.

Under the hood it uses the `UIFont.TextStyle` instead of the plain `systemFont(ofSize fontSize: CGFloat)`. This ensures you get a consistent and accessible typography set out-the-box.

#### Usage

```swift
let font = UIColor.headline

// alternatively
let font: UIColor = .headline
```

This will return a `UIFont` with the `TextStyle.headline` and `.medium` weight. Any element that uses this font will now adjust the font size according to the user's settings.

### Accessibility responsiveness example

<details>
  <summary>Click to expand!</summary>
  <img src="Assets/responsive-typography.gif" width="440" height="440" />
</details>

### Fonts list

Coming soon...
