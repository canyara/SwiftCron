// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftCron",
    products: [
        .library(name: "SwiftCron", targets: ["SwiftCron"]),
    ],
    dependencies:[],
        targets: [
        .target(name: "SwiftCron", dependencies: [], path: "Sources/")
    ],
    swiftLanguageVersions: [.v5]
)
