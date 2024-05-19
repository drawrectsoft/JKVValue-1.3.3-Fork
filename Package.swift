// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JKVValue",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "JKVValue",
            targets: ["JKVValue"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "JKVValue",
            dependencies: [],
            path: "JKVValue",
            exclude: [
                "Info.plist",
                "JKVValue-Info.plist"
            ],
            publicHeadersPath: "include/Headers/Public",
            cSettings: [
                .headerSearchPath("include/Headers/Private"),
                .headerSearchPath("include/Headers/Public")
            ]),
        .testTarget(
            name: "JKVValueTests",
            dependencies: ["JKVValue"],
            path: "JKVValueTests",
            exclude: [
                "Info.plist"
            ]),
    ]
)
