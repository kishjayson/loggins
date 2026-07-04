// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "loggins",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "loggins",
            targets: ["loggins"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser.git",
            from: "1.6.1"
        )
    ],
    targets: [
        .executableTarget(
            name: "loggins",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
