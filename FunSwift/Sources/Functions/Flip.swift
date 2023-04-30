//
//  Flip.swift
//  Functions
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Foundation

/// Higher-order function, that takes a chain consisting of three single-argument functions
/// and transforms it into a chain of same-signature functions, _but with the first two in flipped order_.
public func flip<A, B, C>(
    _ f: @escaping (A) -> (B) -> C
) -> (B) -> (A) -> C {
    { b in
        { a in
            f(a)(b)
        }
    }
}
