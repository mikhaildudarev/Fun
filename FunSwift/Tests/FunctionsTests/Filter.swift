//
//  Filter.swift
//  FunctionsTests
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Functions
@testable import TestHelpers
import XCTest

final class FilterTests: XCTestCase {
    func test() throws {
        XCTAssertEqual(filter(isEven)([1, 2, 3]), [2])
    }
}
