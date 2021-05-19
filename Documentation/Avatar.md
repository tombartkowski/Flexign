# Avatar

`Avatar` is a component that is commonly used in many apps. It's a circular `UIImageView` subclass fully rounded corners that can be used to display profile images.

#### Usage

```swift
//from quick example
let avatar = Avatar()
avatar.image = UIImage(named: "profile")
```

#### Details

To create an `Avatar` use the default initializer.

```swift
Avatar.init(style: ViewStyle = ViewStyle.colored(.system(.grey6), cornerRadius: .full))
```

Use AutoLayout or any other layout engine to set the size for your `Avatar`.
