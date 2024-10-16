// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.15.2-43-g894e9ef7d"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.15.2-43-g894e9ef7d/BNBOcclusion.zip",
            checksum: "6a078ef9b853ca2a2256d9b0e35dc9569f7ea8318a8f925eb8cd4c92e9c9f0d0"
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
