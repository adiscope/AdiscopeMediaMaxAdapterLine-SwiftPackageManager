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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.2"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaMaxAdapterLine.zip",
            checksum: "a57a0e55918f5cba5de39986819715b98088fc29af6f2ebe59edd5b37d5dcd7d"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterLineMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AppLovinMediationLineAdapter.xcframework.zip",
            checksum: "d6f23e05e87066242244a539fb384f470ee7f17464c71de24db51eeb06a7c666"
        ),
        .binaryTarget(
            name: "FiveAd",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/FiveAd.xcframework.zip",
            checksum: "913dcc973bb13793b19b19a62e4f72e2590afcbac3b9e43d170dfc03f1739a4d"
        ),
    ]
)
