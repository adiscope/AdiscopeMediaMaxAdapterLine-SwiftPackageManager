// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterLine",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterLine",
            targets: ["AdiscopeMediaMaxAdapterLineTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterLineTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterLine"),
                .target(name: "AdiscopeMediaMaxAdapterLineMediationAdapter"),
                .target(name: "FiveAd"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterLine",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterLine.zip",
            checksum: "621929aeae5e825daed03fc2da300779b8365bc44806f6c17b5edd273f735a8c"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterLineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationLineAdapter.xcframework.zip",
            checksum: "dd09fe917909e3d17fc342c74cabb3e43b6c63c1ca3566aaf6fd633402c0541a"
        ),
        .binaryTarget(
            name: "FiveAd",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/FiveAd.xcframework.zip",
            checksum: "cc764c6545423f3502c6256fbe099ff7fd2839e1accebd0da6a4e1cf66a2752b"
        ),
    ]
)
