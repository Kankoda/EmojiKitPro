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
            url: "https://github.com/Kankoda/EmojiKit/releases/download/0.1.1_binary/EmojiKit.zip",
            checksum: "a747d73e4be57be9ad597be9bcb24c58f9e00faf324d49c53b587368aca83b49"
        )
    ]
)
