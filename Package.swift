// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "GoodreadsService",
                      products: [.library(name: "GoodreadsService", targets: ["GoodreadsService"])],
                      dependencies: [],
                      targets: [.target(name: "GoodreadsService", dependencies: []),
                                .testTarget(name: "GoodreadsServiceTests", dependencies: ["GoodreadsService"])])
