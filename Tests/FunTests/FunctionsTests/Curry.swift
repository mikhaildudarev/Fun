//
//  Curry.swift
//  FunTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import Fun
@testable import TestHelpers
import XCTest

final class CurryTests: XCTestCase {
    func test() throws {
        let curriedArrayInit: (Character) -> (Int) -> [Character] = curry(Array.init(repeating:count:))
        XCTAssertEqual(curriedArrayInit("*")(3), ["*", "*", "*"])
    }
}
