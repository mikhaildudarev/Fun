//
//  SingleTypeCompositionTests.swift
//  OperatorsTests
//
//  Created by Mikhail Dudarev on 30.04.2023.
//

import XCTest
import Operators
@testable import TestHelpers

final class SingleTypeCompositionTests: XCTestCase {
    func test() throws {
        XCTAssertEqual((increment <> square)(2), 9)
        XCTAssertEqual((square <> increment)(2), 5)
    }
}

