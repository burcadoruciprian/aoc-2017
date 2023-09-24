// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "day05",
    dependencies: [
          .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
          .package(url: "https://github.com/apple/swift-collections.git", from: "1.0.0")
        ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "day05",
            dependencies: [
                          .product(name: "Algorithms", package: "swift-algorithms"),
                          .product(name: "Collections", package: "swift-collections")
                        ],
            path: "Sources"),
    ]
)
