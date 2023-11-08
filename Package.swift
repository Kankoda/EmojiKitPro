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
            url: "https://github.com/Kankoda/EmojiKit/releases/download/0.1.0_binary/EmojiKit.zip",
            checksum: "79e07d148f6dcbf8444222506882e244fc941550ffe024b009e28b07cadc36ee"
        )
    ]
)
