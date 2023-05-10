// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestPackageDependentOnAandB",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestPackageDependentOnAandB", type: .dynamic,      
            targets: ["TestPackageDependentOnAandB"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/adavalli123/TestPackageA.git", branch: "main"),
        .package(url: "https://github.com/adavalli123/TestPackageB.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TestPackageDependentOnAandB",
            dependencies: [
                .product(name: "TestPackageA", package: "TestPackageA"),
                .product(name: "TestPackageB", package: "TestPackageB")
            ]),
        .testTarget(
            name: "TestPackageDependentOnAandBTests",
            dependencies: ["TestPackageDependentOnAandB"]),
    ]
)
