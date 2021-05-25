// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

/*
 https://swift.org/package-manager/
 */

let package = Package(
    name: "Bazooka",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Bazooka",
            targets: ["Bazooka"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "Bazooka",
            dependencies: []),
        .testTarget(
            name: "BazookaTests",
            dependencies: ["Bazooka"]),
    ]
)
