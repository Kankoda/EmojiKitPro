// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EmojiKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EmojiKit",
            targets: ["EmojiKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "EmojiKit",
            url: "https://github.com/Kankoda/EmojiKit/releases/download/0.0.0/EmojiKit.zip",
            checksum: "51018df02cfc598ab3a1fa0cb1e1e8b777f3e690199588be22ca47d574a12622"
        )
    ]
)
