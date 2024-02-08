// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// swift-tools-version:5.3
import PackageDescription

//let package = Package(
//    name: "DangerTest2024",
//    products: [
////         Products define the executables and libraries produced by a package, and make them visible to other packages.
//        .library(
//            name: "DangerRep",
//            type: .dynamic,
//            targets: ["DangerTest2024"]),
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // Here you need to specify the URL to the Danger Swift repository and the version range.
//        .package(url: "https://github.com/danger/swift.git", .upToNextMajor(from: "3.0.0")),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
//        .target(
//            name: "DangerTest2024",
//            dependencies: [
//                .product(name: "Danger", package: "swift") // Ensure this refers correctly to the Danger package
//            ],
//            path: "DangerTest2023", // Adjust this path to where your source files are located
//            sources: ["Stringify2.swift"] // Specify the source files you want to include in this target
//        ),
//    ]
//)


let package = Package(
    name: "DangerTest2024",
    dependencies: [
        // This is the only dependency you need if you're just using Danger Swift.
        .package(url: "https://github.com/danger/swift.git", from: "3.0.0"),
    ],
    targets: [
        // Define a target that includes your Dangerfile and any other Swift files related to Danger.
        .target(
            name: "DangerDependencies", // This target is just for compiling any related files.
            dependencies: [
                .product(name: "Danger", package: "swift"), // Use Danger directly from its package.
            ],
            path: "DangerTest2023", // Adjust this path to where your Danger-related files are located.
            sources: ["Stringify2.swift"] // List any Swift source files you use for Danger here.
        ),
        // If you have executable code in your project that isn't related to Danger, define another target for it as necessary.
    ]
)

