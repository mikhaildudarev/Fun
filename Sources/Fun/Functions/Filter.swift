//
//  Filter.swift
//  Fun
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Foundation

/// Generic composable version of the vanilla filter function.
public func filter<A>(
    _ f: @escaping (A) -> Bool
) -> ([A]) -> [A] {
    { array in array.filter(f) }
}
