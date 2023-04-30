//
//  ForwardCompositionTests.swift
//  OperatorsTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import XCTest
import Operators
@testable import TestHelpers

final class ForwardCompositionTests: XCTestCase {
    func test() throws {
        XCTAssertEqual((increment >>> isEven)(1), true)
        XCTAssertEqual((increment >>> isEven)(2), false)
    }
}
