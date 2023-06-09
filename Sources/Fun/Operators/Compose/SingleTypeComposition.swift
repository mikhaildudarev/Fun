//
//  SingleTypeComposition.swift
//  Fun
//
//  Created by Mikhail Dudarev on 30.04.2023.
//

import Foundation

precedencegroup SingleTypeComposition {
    associativity: left
    higherThan: ForwardApplication
}

/// Single-type composition
infix operator <>: SingleTypeComposition

public func <> <A>(
    f: @escaping (A) -> A,
    g: @escaping (A) -> A
) -> (A) -> A {
    f >>> g
}
