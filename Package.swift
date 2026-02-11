// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Pangle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PangleAdapter", targets: ["PangleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "7.6.0-release.6"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pangle-adapter/5.14.0/ISPangleAdapter5.14.0.zip",
      checksum: "4238b82f318df24356d1b050796b5fce517a88d1b0ce7849599cdbc2cb532e66"
    )
  ]
)
