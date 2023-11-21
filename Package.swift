// swift-tools-version: 5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ios-ux-sdk-spm-artifacts",
    platforms: [
           .iOS(.v13)
       ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ios-ux-sdk-spm-artifacts",
            targets: ["StyliticsData", "StyliticsUI"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "StyliticsData",
                      path: "Frameworks/StyliticsData.xcframework"
                     ),
        .binaryTarget(name: "StyliticsUI",
                      path: "Frameworks/StyliticsUI.xcframework"
                     ),
    ]
)
