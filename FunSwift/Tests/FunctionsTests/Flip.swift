//
//  Flip.swift
//  FunctionsTests
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Functions
@testable import TestHelpers
import XCTest

final class FlipTests: XCTestCase {
    func test() throws {
        let uppercasedWithLocale = flip(String.uppercased(with:))
        let uppercasedWithEn = uppercasedWithLocale(Locale(identifier: "en"))
        XCTAssertEqual(uppercasedWithEn("Hello"), "HELLO")
    }
}
