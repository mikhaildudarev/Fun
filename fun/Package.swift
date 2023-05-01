// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fun",
    products: [
        .library(
            name: "fun",
            targets: [
                "Operators",
                "Functions"
            ]
        )
    ],
    targets: [
        .target(name: "Operators"),
        .target(name: "Functions"),
        .target(name: "TestHelpers", path: "Tests/Helpers"),
        .testTarget(name: "OperatorsTests", dependencies: ["Operators", "TestHelpers"]),
        .testTarget(name: "FunctionsTests", dependencies: ["Functions", "TestHelpers"]),
        .testTarget(
            name: "IntegrationTests",
            dependencies: [
                "Operators",
                "Functions",
                "TestHelpers"
            ]
        )
    ]
)
