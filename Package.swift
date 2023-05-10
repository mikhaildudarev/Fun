// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fun",
    products: [
        .library(name: "Fun", targets: ["Fun"])
    ],
    targets: [
        .target(name: "Fun"),
        .target(name: "TestHelpers", path: "Tests/Helpers"),
        .testTarget(name: "FunTests", dependencies: ["Fun", "TestHelpers"])
    ]
)
