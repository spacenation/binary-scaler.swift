# Binary type scaler for Swift

This SPM package provides custom `%`  prefix operator to scale binary integers proportionality between integer types.

- Works with UInt8, Unt16, UInt32, UInt64
- Fast conversion with binary shifting
- Scaling up and down

## Unsigned Integers
```swift
let result: UInt16 = %UInt8(255)
/// Result is 65535

let result: UInt16 = %UInt8(128)
/// Result is 32896
```
## Code Contributions
Feel free to contribute via fork/pull request to master branch. If you want to request a feature or report a bug please start a new issue.

## Coffee Contributions
If you find this project useful please consider becoming my GitHub sponsor.
