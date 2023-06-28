// swift-tools-version: 5.7
import PackageDescription
 
let package = Package(
    name: "MyFullLibrary2",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MyLibraryCoreFramework",
            targets: ["MyLibraryCoreFramework"]),
        .library(
            name: "MyFullLibrary2",
            targets: ["MyFullLibrary2"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MyLibraryCoreFramework",
            url: "Releasing 0.0.17",
            checksum: " "
        ),
        .binaryTarget(
            name: "MyLibraryFramework",
            url: "Releasing 0.0.17",
            checksum: " "
        ),
        .target(
            name: "MyFullLibrary2",
            dependencies: [
                "MyLibraryCoreFramework",
                "MyLibraryFramework"
             ]
        ),
    ]
)
