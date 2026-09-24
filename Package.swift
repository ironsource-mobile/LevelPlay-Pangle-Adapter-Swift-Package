// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Pangle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PangleAdapter", targets: ["PangleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "8.3.0-release.8"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "PangleAdapter",
      dependencies: [
        "PangleAdapterSDK",
        .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "PangleAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pangle-adapter/5.36.0/ISPangleAdapter5.36.0.zip",
      checksum: "2f5dcfb92467488a9a957e9768fa939313ea8a430f184e445168aedb7676e5cd"
    )
  ]
)
