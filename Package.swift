// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "ReactiveObjC",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ReactiveObjC",
            targets: ["ReactiveObjC"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "3.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),
    ],
    targets: [
        .target(
            name: "ReactiveObjC",
            path: "Sources/ReactiveObjC",
            exclude: [
                "Deprecations+Removals.swift",
                "NSControl+RACCommandSupport.m",
                "NSObject+RACAppKitBindings.m",
                "NSText+RACSignalSupport.m",
                "NSControl+RACTextSignalSupport.m",
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("private"),
            ]
        ),
        .testTarget(
            name: "ReactiveObjCTests",
            dependencies: ["ReactiveObjC", "Quick", "Nimble"],
        ),
        .testTarget(
            name: "ReactiveObjCBridgingTests",
            dependencies: ["ReactiveObjC", "Quick", "Nimble"],
        ),
    ]
)
