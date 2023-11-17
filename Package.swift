// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MLYSDK",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MLYSDK",
            targets: ["MLYSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JacobHearst/GCDWebServer", .upToNextMajor(from: "3.5.4")),
        .package(url: "https://github.com/muxinc/mux-stats-sdk-avplayer.git", .upToNextMajor(from: "3.1.0")),
        .package(url: "https://github.com/getsentry/sentry-cocoa", .upToNextMajor(from: "7.31.3"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "MLYSDK",
            path: "BinaryFrameworks/MLYSDK.xcframework"
        ),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
