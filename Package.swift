// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TSMessages",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TSMessages",
            targets: ["TSMessages"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TSMessages",
            dependencies: [],
            path: "TSMessages",
            exclude: ["Info.plist"],
            resources: [
                .copy("Assets/NotificationBackgroundSuccess@2x.png"),
                .copy("Assets/NotificationBackgroundSuccessIcon.png"),
                .copy("Assets/NotificationBackgroundWarningIcon@2x.png"),
                .copy("Assets/NotificationButtonBackground@2x.png"),
                .copy("Assets/TSMessagesDefaultDesign.json"),
                .copy("Assets/NotificationBackgroundMessage@2x.png"),
                .copy("Assets/NotificationBackgroundMessage.png"),
                .copy("Assets/NotificationBackgroundError@2x.png"),
                .copy("Assets/NotificationBackgroundWarningIcon.png"),
                .copy("Assets/NotificationBackgroundSuccessIcon@2x.png"),
                .copy("Assets/NotificationBackgroundWarning.png"),
                .copy("Assets/NotificationBackgroundSuccess.png"),
                .copy("Assets/NotificationButtonBackground.png"),
                .copy("Assets/NotificationBackgroundWarning@2x.png"),
                .copy("Assets/NotificationBackgroundError.png"),
                .copy("Assets/NotificationBackgroundErrorIcon@2x.png"),
                .copy("Assets/NotificationBackgroundErrorIcon.png"),
            ],
            publicHeadersPath: "Classes")
    ]
)
