// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dangerTest2024",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DangerTest2024",
            targets: ["DangerTest2024"]),
    ],
    dependencies: [
 
          .package(url: "https://github.com/danger/swift.git", from: "3.18.0"), // dev
          // Danger Plugins
          
      ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.

        .testTarget(
            name: "DangerTest2024Tests",
            dependencies: ["DangerTest2024"]),
        .target(name: "DangerTest2024", dependencies: [
            .product(name: "Danger",package: "swift")
            
        ], path: "DangerTest2024", sources: ["Stringify.swift"]),
    ]
)
