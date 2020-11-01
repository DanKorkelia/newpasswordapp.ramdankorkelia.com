// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "newpasswordapp.ramdankorkelia.com",
    products: [
        .executable(name: "newpasswordapp.ramdankorkelia.com", targets: ["newpasswordapp.ramdankorkelia.com"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "newpasswordapp.ramdankorkelia.com",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "newpasswordapp.ramdankorkelia.comTests",
            dependencies: ["newpasswordapp.ramdankorkelia.com"]),
    ]
)