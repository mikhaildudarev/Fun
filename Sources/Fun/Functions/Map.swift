//
//  Map.swift
//  Fun
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Foundation

/// Generic composable version of the vanilla map function.
public func map<A, B>(
    _ f: @escaping (A) -> B
) -> ([A]) -> [B] {
    { array in array.map(f) }
}
