# FunSwift

Experimental package to explore functional programming in Swift.

Inspired by PointFree, objc.io and other bright minds out there.

## Operators

### Pipe Forward / Forward Application (`|>`)

Generic operator, which forwards a value in the next function call.

Example:

```swift
func increment(_ value: Int) -> Int { value + 1 }
func square(_ value: Int) -> Int { value * value }
2 |> increment |> square // (2 + 1) ^ 2 (result is 9)
```

### Forward Composition (`>>>`)

Generic operator, which takes two functions (`(A) -> B` and `(B) -> C`) and composes them into new function `(A) -> C`. 

Example:

```swift
func increment(_ value: Int) -> Int { value + 1 }
func isEven(_ value: Int) -> Bool { value % 2 == .zero }
func isIncrementedValueEven(_ value: Int) -> (Int) -> Bool { increment >>> isEven }
1 |> isIncrementedValueEven // (1 + 1) % 2 == 0 (result is true)
```

### Single-Type Composition (`<>`)

More constrained version of the Forward Composition operator, which takes two functions of the same type `(A) -> A` and composes them into new function of the same signature.

Example:

```swift
func increment(_ value: Int) -> Int { value + 1 }
func square(_ value: Int) -> Int { value * value }
func incrementAndSquare(_ value: Int) -> (Int) -> Int { increment <> square }
3 |> incrementAndSquare // (3 + 1) ^ 2 (result is 16)
```
