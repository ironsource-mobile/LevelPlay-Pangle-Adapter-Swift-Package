// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-Pangle-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PangleAdapter", targets: ["PangleAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/bytedance/AdsGlobalPackage", exact: "8.1.1.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pangle-adapter/5.31.0/ISPangleAdapter5.31.0.zip",
      checksum: "d6e73990cc469fb2abd0e2294f1615a72863caa87ad4d41ecefac83a40086ee7"
    )
  ]
)
