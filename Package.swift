// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Pangle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PangleAdapter", targets: ["PangleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "8.1.0.9"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pangle-adapter/5.29.0/ISPangleAdapter5.29.0.zip",
      checksum: "54e0f88abe501c9d51b87ddacda12ecd2c3fc8ed319d53bbd94f4fd33ad4919a"
    )
  ]
)
