// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FunSwift",
    products: [
        .library(name: "FunSwift", targets: ["Operators"])
    ],
    targets: [
        .target(name: "Operators"),
        .testTarget(name: "OperatorsTests", dependencies: ["Operators"])
    ]
)
