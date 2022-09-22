// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TriangularPrism",
    products: [
        .library(
            name: "TriangularPrism",
            targets: ["TriangularPrism"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TriangularPrism",
            dependencies: []
        ),
        .testTarget(
            name: "TriangularPrismTests",
            dependencies: ["TriangularPrism"]
        ),
    ]
)
