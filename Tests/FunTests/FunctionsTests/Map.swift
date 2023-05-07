//
//  Map.swift
//  FunTests
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Fun
@testable import TestHelpers
import XCTest

final class MapTests: XCTestCase {
    func test() throws {
        XCTAssertEqual(map(increment)([1, 2, 3]), [2, 3, 4])
    }
}
