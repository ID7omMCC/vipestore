// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VipeStore",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "VipeStore",
            targets: ["VipeStore"]
        ),
    ],
    targets: [
        .target(
            name: "VipeStore",
            path: "."
        ),
    ]
)
