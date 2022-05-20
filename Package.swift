// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "ErrorKit",
    defaultLocalization: "ko",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "ErrorKit",
            targets: [
                "ErrorKit"
            ]
        )
    ],
    targets: [
        .target(
            name: "ErrorKit"
        )
    ]
)
