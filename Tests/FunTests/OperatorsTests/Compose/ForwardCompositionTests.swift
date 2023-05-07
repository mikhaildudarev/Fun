//
//  ForwardCompositionTests.swift
//  FunTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import Fun
@testable import TestHelpers
import XCTest

final class ForwardCompositionTests: XCTestCase {
    func test() throws {
        XCTAssertEqual((increment >>> isEven)(1), true)
        XCTAssertEqual((increment >>> isEven)(2), false)
    }
}
