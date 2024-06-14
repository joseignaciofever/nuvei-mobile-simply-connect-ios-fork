// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nuvei-mobile-simply-connect-ios",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NuveiSimplyConnectSDK",
            targets: ["NuveiSimplyConnectSDKWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airsidemobile/JOSESwift", from: "2.4.0"),
    ],
    targets: [
        .target(
            name: "NuveiSimplyConnectSDKWrapper",
            dependencies: [
                .product(name: "JOSESwift", package: "JOSESwift"),
                .target(name: "NuveiSimplyConnectSDKFramework")
            ],
            path: "SwiftPM/NuveiSimplyConnectSDKWrapper"
        ),

        .binaryTarget(
            name: "NuveiSimplyConnectSDKFramework",
            path: "NuveiSimplyConnectSDK.xcframework"
        )
    ]
)
