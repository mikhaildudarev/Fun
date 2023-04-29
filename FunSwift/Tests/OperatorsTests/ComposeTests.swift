//
//  ComposeTests.swift
//  OperatorsTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import XCTest
@testable import Operators

final class ComposeTests: XCTestCase {
    func test() throws {
        XCTAssertEqual((increment >>> square)(2), 9)
        XCTAssertEqual((square >>> increment)(2), 5)
    }
}
