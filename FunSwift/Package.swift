// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FunSwift",
    products: [
        .library(name: "FunSwift", targets: ["FunSwift"])
    ],
    targets: [
        .target(name: "FunSwift"),
        .testTarget(name: "FunSwiftTests", dependencies: ["FunSwift"])
    ]
)
