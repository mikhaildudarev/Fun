//
//  Pipe.swift
//  Operators
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import Foundation

precedencegroup ForwardApplication {
    associativity: left
}

infix operator |>: ForwardApplication

public func |> <A, B>(value: A, transform: (A) -> B) -> B {
    transform(value)
}
