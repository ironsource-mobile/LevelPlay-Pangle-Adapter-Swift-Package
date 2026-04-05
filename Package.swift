// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Pangle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PangleAdapter", targets: ["PangleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "7.9.1.1"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "PangleAdapter",
      dependencies: [
        "PangleAdapterSDK",
        .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "PangleAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pangle-adapter/5.19.0/ISPangleAdapter5.19.0.zip",
      checksum: "a4585b80832f99d4b2c493193f4962db54b5b3f6e27d7ade68a741c72e38d797"
    )
  ]
)
