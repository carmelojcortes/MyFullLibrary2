// swift-tools-version: 5.7
import PackageDescription
 
let package = Package(
    name: "MyFullLibrary2",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MyLibraryHeadless",
            targets: ["MyLibraryHeadless"]),
        .library(
            name: "MyFullLibrary2",
            targets: ["MyFullLibrary2"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MyLibraryHeadless",
            url: "To replace",
            checksum: "To replace"
        ),
        .binaryTarget(
            name: "MyLibraryFramework",
            url: "To replace",
            checksum: "To replace"
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
