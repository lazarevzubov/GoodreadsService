// swift-tools-version:6.2

import PackageDescription

let package = Package(
    name: "GoodreadsService",
    platforms: [
        .iOS(.v26),
        .macOS(.v26),
        .watchOS(.v26)
    ],
    products: [.library(name: "GoodreadsService", targets: ["GoodreadsService"])],
    dependencies: [],
    targets: [
        .target(name: "GoodreadsService", dependencies: []),
        .testTarget(name: "GoodreadsServiceTests", dependencies: ["GoodreadsService"])
    ]
)
