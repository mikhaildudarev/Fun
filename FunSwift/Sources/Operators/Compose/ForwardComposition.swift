//
//  ForwardComposition.swift
//  Operators
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import Foundation

precedencegroup ForwardComposition {
    associativity: left
    higherThan: ForwardApplication
}

/// Forward compose operator.
infix operator >>>: ForwardComposition

public func >>> <A, B, C>(
    f: @escaping (A) -> B,
    g: @escaping (B) -> C
) -> (A) -> C {
    { value in g(f(value)) }
}

