//
//  FunTests.swift
//  FunTests
//
//  Created by Mikhail Dudarev on 01.05.2023.
//

import Fun
@testable import TestHelpers
import XCTest

final class FunTests: XCTestCase {
    func test() throws {
        XCTAssertEqual(2 |> increment >>> square >>> String.init, "9")
        XCTAssertEqual([1, 2, 3, 4] |> filter(isEven) >>> map(increment >>> square), [9, 25])
        
        XCTAssertEqual("Hello" |> flip(String.uppercased)(), "HELLO")
        
        let stringConstructor = flip(curry(String.init(data:encoding:)))
        let utf8StringConstructor = stringConstructor(.utf8)
        let stringData = "Hello".data(using: .utf8)!
        XCTAssertEqual(utf8StringConstructor(stringData), "Hello")
    }
}
