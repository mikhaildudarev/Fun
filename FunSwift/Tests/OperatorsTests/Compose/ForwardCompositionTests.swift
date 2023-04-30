//
//  ForwardCompositionTests.swift
//  OperatorsTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import XCTest
@testable import Operators

final class ForwardCompositionTests: XCTestCase {
    func test() throws {
        XCTAssertEqual((increment >>> isEven)(1), true)
        XCTAssertEqual((increment >>> isEven)(2), false)
    }
}
