// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APICore",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "APICore",
            targets: ["APICore"]),
    ],
    dependencies: [
.package(url: "https://github.com/sweetrpg/common.swift.git", from: "0.0.1"),
.package(url: "https://github.com/sweetrpg/db.swift.git", from: "0.0.1"),
.package(url: "https://github.com/sweetrpg/model-core.swift.git", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "APICore",
            dependencies: [
                .product(name: "Common", package: "common.swift"),
                .product(name: "DB", package: "db.swift"),
                .product(name: "ModelCore", package: "model-core.swift"),
            ]),
        .testTarget(
            name: "APICoreTests",
            dependencies: ["APICore"]),
    ]
)
