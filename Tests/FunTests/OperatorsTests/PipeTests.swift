//
//  PipeTests.swift
//  FunTests
//
//  Created by Mikhail Dudarev on 29.04.2023.
//

import Fun
@testable import TestHelpers
import XCTest

final class PipeTests: XCTestCase {
    func test() throws {
        XCTAssertEqual(1 |> increment, 2)
        XCTAssertEqual(1 |> increment |> increment, 3)
        XCTAssertEqual(2 |> square, 4)
        XCTAssertEqual(2 |> square |> square, 16)
        XCTAssertEqual(2 |> increment |> square, 9)
    }
}

