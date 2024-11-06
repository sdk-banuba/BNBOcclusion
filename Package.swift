// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-173-gee6f2723a"

let package = Package(
    name: "BNBOcclusion",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBOcclusion",
            targets: [
                "BNBOcclusion",
                "BNBOcclusion_BNBSdkCore",
                "BNBOcclusion_BNBEffectPlayer",
                "BNBOcclusion_BNBScripting",
                "BNBOcclusion_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBOcclusion",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-173-gee6f2723a/BNBOcclusion.zip",
            checksum: "a528e1b4e4206a58447fb117199506c5e107bbfc8e4853bb313cd4fa3bccc0e5"
        ),
        .target(
            name: "BNBOcclusion_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBOcclusion_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBOcclusion_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
        .target(
            name: "BNBOcclusion_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
