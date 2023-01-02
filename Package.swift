// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "Device",
    products: [
        .library(name: "Device", targets: ["Device"]),
        .library(name: "iPhoneOSDevice", targets: ["iPhoneOSDevice"]),
        .library(name: "tvOSDevice", targets: ["tvOSDevice"]),
    ],
    dependencies: [
        .package(url: "https://github.com/EmilioOjeda/AllAppleDevices", exact: "0.1.0"),
    ],
    targets: [
        .target(name: "Device"),
        .target(name: "iPhoneOSDevice"),
        .target(name: "tvOSDevice"),
    ]
)
