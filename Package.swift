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
            url: "https://github.com/carmelojcortes/MyLibrary/releases/download/0.0.7/MyLibCore.zip",
            checksum: "8f0b32cdfd84b684db4c6de3bfe268d72ff80c6f9ed5d2bda2eae098cb85724c"
        ),
        .binaryTarget(
            name: "MyLibraryFramework",
            url: "https://github.com/carmelojcortes/MyLibrary/releases/download/0.0.7/MyLib.zip",
            checksum: "9a58451565591a031d99952040448cd709d5a94397b7eb3f5d08763fc34fa231"
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
