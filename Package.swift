// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ErrorKit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(name: "ErrorKit", targets: ["ErrorKit"])
    ],
    targets: [
        .target(name: "ErrorKit")
    ]
)
