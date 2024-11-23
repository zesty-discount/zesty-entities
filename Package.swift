// swift-tools-version: 6.0.0
import PackageDescription

let package = Package(
    name: "zesty-entities",
    platforms: [.macOS(.v10_15), .iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "Entities", targets: ["Entities"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/jwt-kit.git", from: "4.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "Entities", dependencies: [.product(name: "JWTKit", package: "jwt-kit")]),
    ]
)
