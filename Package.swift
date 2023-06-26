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
            url: "https://github.com/carmelojcortes/MyLibrary/releases/download/0.0.9/MyLibCore.zip",
            checksum: "be9270b36e83c075f26ff1079a77c8e0273242bba2db9ba912b56969ecf5c0b5"
        ),
        .binaryTarget(
            name: "MyLibraryFramework",
            url: "https://github.com/carmelojcortes/MyLibrary/releases/download/0.0.9/MyLib.zip",
            checksum: "5a24b9a6e4d569c7a1c2ee54fa3aaf046aceadf92e6fc42263a7b55f218e91cb"
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
