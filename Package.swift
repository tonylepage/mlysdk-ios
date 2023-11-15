// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MLYSDK",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MLYSDK",
            targets: ["MLYSDK", "MUXSDKStats"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tonylepage/GCDWebServer", .upToNextMajor(from: "3.5.6")),
        .package(url: "https://github.com/getsentry/sentry-cocoa", .upToNextMajor(from: "7.31.3")),
        .package(url: "https://github.com/webrtc-sdk/Specs", .upToNextMajor(from: "104.5112.16")),
        .package(url: "https://github.com/centrifugal/centrifuge-swift", .upToNextMajor(from: "0.5.5")),
        .package(url: "https://github.com/apple/swift-protobuf", .upToNextMajor(from: "1.21.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "MUXSDKStats",
            path: "BinaryFrameworks/MUXSDKStats.xcframework"
        ),
        .binaryTarget(
            name: "MLYSDK",
            path: "BinaryFrameworks/MLYSDK.xcframework"
        ),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
