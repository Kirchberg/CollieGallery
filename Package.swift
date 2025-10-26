// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CollieGallery",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CollieGallery",
            targets: ["CollieGallery"]
        )
    ],
    targets: [
        .target(
            name: "CollieGallery",
            path: "Sources/CollieGallery",
            resources: []
        ),
        .testTarget(
            name: "CollieGalleryTests",
            dependencies: ["CollieGallery"],
            path: "Tests/CollieGalleryTests"
        )
    ]
)
