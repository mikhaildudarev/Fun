//
//  Curry.swift
//  FunctionsTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import XCTest
@testable import Functions
@testable import TestHelpers

final class FunctionsTests: XCTestCase {
    func test() throws {
        let curriedArrayInit: (Character) -> (Int) -> [Character] = curry(Array.init(repeating:count:))
        XCTAssertEqual(curriedArrayInit("*")(3), ["*", "*", "*"])
    }
}
