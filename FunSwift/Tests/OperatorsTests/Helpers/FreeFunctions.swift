//
//  FreeFunctions.swift
//  OperatorsTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import Foundation

func increment(_ value: Int) -> Int {
    value + 1
}

func square(_ value: Int) -> Int {
    value * value
}

func isEven(_ value: Int) -> Bool {
    value % 2 == .zero
}
