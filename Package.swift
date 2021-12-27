// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PHFComposeBarView",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PHFComposeBarView",
            targets: ["PHFComposeBarView"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "PHFComposeBarView",
            dependencies: [],
            path: "Sources",
            sources: ["PHFComposeBarView"],
            publicHeadersPath: ".",
            cSettings: [
              .headerSearchPath("PHFComposeBarView"),
            ],
            linkerSettings: [
              .linkedFramework("UIKit"),
              .linkedFramework("CoreFoundation"),
            ]
        ),
        .testTarget(
            name: "PHFComposeBarViewTests",
            dependencies: ["PHFComposeBarView"],
            path: "Tests",
            sources: [
                "PHFComposeBarViewTests"
            ]
        ),
    ]
)
