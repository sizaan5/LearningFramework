// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/*let package = Package(
    name: "LearningFramework",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LearningFramework",
            targets: ["LearningFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LearningFramework"),
        .testTarget(
            name: "LearningFrameworkTests",
            dependencies: ["LearningFramework"]),
    ]
)*/
let package = Package(
    name: "LearningFramework",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LearningFramework_Build",
            targets: ["LearningFramework_Build"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/googlemaps/ios-maps-sdk.git", from: "8.3.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "LearningFramework_Build",
            path: "./Sources/LearningFramework_Build.xcframework"
        )
    ]
)
