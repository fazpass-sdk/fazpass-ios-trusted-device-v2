// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.0.6"

let package = Package(
    name: "IosTrustedDeviceV2",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "IosTrustedDeviceV2",
            targets: ["IosTrustedDeviceV2Targets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit", from: "5.0.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", "10.16.0"..."10.29.0"),
    ],
    targets: [
        .binaryTarget(
            name: "IosTrustedDeviceV2", 
            path: "./XCFrameworks/\(version)/IosTrustedDeviceV2.xcframework"
        ),
        .target(
            name: "IosTrustedDeviceV2Targets",
            dependencies: [
                "DeviceKit",
                .product(name: "FirebaseAnalyticsWithoutAdIdSupport", package: "firebase-ios-sdk"),
                .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                .target(name: "IosTrustedDeviceV2")
            ],
            path: "IosTrustedDeviceV2Targets",
            swiftSettings: [
                .define("UIKIT_ENABLED")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        ),
    ]
)
