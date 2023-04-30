//
//  Curry.swift
//  Functions
//
//  Created by Mikhail Dudarev on 30.04.2023.
//

import Foundation

/// Higher-order function, that takes a function with **two** arguments
/// and transforms it into a chain of single-argument functions.
public func curry<A, B, C>(
    _ f: @escaping (A, B) -> C
) -> (A) -> (B) -> C {
    { a in
        { b in
            f(a, b)
        }
    }
}
