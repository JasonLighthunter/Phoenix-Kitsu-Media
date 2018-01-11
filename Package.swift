// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PhoenixKitsuMedia",
  products: [
    .library(name: "PhoenixKitsuMedia", targets: ["PhoenixKitsuMedia"])
  ],
  dependencies: [
    .package(url: "https://github.com/JasonLighthunter/Requestable.git", from: "1.0.0"),
    .package(url: "https://github.com/JasonLighthunter/Phoenix-Kitsu-Core.git", .branch("setup"))
  ],
  targets: [
    .target(name: "PhoenixKitsuMedia", dependencies: ["Requestable", "PhoenixKitsuCore"]),
    .testTarget(name: "PhoenixKitsuMediaTests", dependencies: ["PhoenixKitsuMedia"])
  ]
)
