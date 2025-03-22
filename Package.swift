// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "GoodreadsService",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .watchOS(.v11)
    ],
    products: [.library(name: "GoodreadsService", targets: ["GoodreadsService"])],
    dependencies: [],
    targets: [
        .target(name: "GoodreadsService", dependencies: []),
        .testTarget(name: "GoodreadsServiceTests", dependencies: ["GoodreadsService"])
    ]
)
