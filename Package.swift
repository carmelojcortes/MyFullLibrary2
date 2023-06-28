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
            url: "https://github.com/carmelojcortes/MyFullLibrary2/releases/download/0.0.17/MyLibCore.zip",
            checksum: "a6f8115403e8cd05f3ee631a255c9aeb9ec86cb5a7ee2aa18f6544b50fa08567"
        ),
        .binaryTarget(
            name: "MyLibraryFramework",
            url: "https://github.com/carmelojcortes/MyFullLibrary2/releases/download/0.0.17/MyLib.zip",
            checksum: "5baa97aa2e344bf8f7b4f64dec67c0e74359d6231dd069005005a2e0af2bf6fe"
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
