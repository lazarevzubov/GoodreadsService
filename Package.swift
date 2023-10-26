// swift-tools-version:5.9

import PackageDescription

let package = Package(name: "GoodreadsService",
                      platforms: [.iOS(.v17),
                                  .macOS(.v14),
                                  .watchOS(.v10)],
                      products: [.library(name: "GoodreadsService", targets: ["GoodreadsService"])],
                      dependencies: [],
                      targets: [.target(name: "GoodreadsService", dependencies: []),
                                .testTarget(name: "GoodreadsServiceTests", dependencies: ["GoodreadsService"])])
