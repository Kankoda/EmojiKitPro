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
            url: "https://github.com/Kankoda/EmojiKit/releases/download/0.2.0_binary/EmojiKit.zip",
            checksum: "531fc8011092719ddd4640e00eda4aae988ad2d2604f62e1a112cf7e5ddb150e"
        )
    ]
)
