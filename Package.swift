// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayInMobiAdapterCompatibility",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(name: "LevelPlayInMobiAdapter", targets: ["LevelPlayInMobiAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-InMobi-Adapter-Swift-Package.git", exact: "5.9.0"),
    ],
    targets: [
        .target(
            name: "LevelPlayInMobiAdapterWrapper",
            dependencies: [
                .product(
                    name: "InMobiAdapter",
                    package: "LevelPlay-InMobi-Adapter-Swift-Package",
                    moduleAliases: ["InMobiAdapter": "LevelPlayInMobiAdapterTarget"]
                ),
            ]
        ),
    ]
)
