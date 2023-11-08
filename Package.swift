// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "EmojiKit",
    products: [
        .library(
            name: "EmojiKit",
            targets: ["EmojiKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "EmojiKit",
            url: "https://github.com/Kankoda/EmojiKit/releases/download/0.1.2_binary/EmojiKit.zip",
            checksum: "c1af49e1c2e73a202daa07d0a73e5703ebe35ca07f4e2fbc644f22cae825b2ed"
        )
    ]
)
