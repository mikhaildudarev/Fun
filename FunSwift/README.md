# FunSwift

Experimental package to explore functional programming in Swift.

Inspired by [PointFree](https://www.pointfree.co), [objc.io](https://www.objc.io) and other bright minds out there.

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

## Functions

### Curry & Flip

`curry` is a higher-order function, that takes a function with several arguments and transforms it into a chain of single-argument functions.

_NOTE: Current implementation of `curry` supports exactly two arguments, but overloads to handle more might be added later (if needed)._

`flip` is a higher-order function, that takes a chain consisting of several single-argument functions and transforms it into a chain of same-signature functions, but with flipped order (except for the final result). It is often used in conjuction with `curry` to create more general functions and avoid code repetition at the caller site.

_NOTE: Overloads to handle curried functions with more arguments might be added later (if needed)._

Example:

```swift
let stringConstructor = flip(curry(String.init(data:encoding:)))
let utf8StringConstructor = stringConstructor(.utf8)
let data = … // some string data
let string = utf8StringConstructor(data) // optional string
```

### Map / Filter

These are just simple composable implementations of their vanilla counterparts.

Example:

```swift
func increment(_ value: Int) -> Int { value + 1 }
func square(_ value: Int) -> Int { value * value }
func isEven(_ value: Int) -> Bool { value % 2 == .zero }
[1, 2, 3, 4] |> filter(isEven) >>> map(increment >>> square) // [9, 25]
```
