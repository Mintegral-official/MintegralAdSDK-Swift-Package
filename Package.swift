// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MintegralAdSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MintegralAdSDK",
            targets: ["MintegralAdSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "MTGSDK",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDK.xcframework.zip",
                      checksum: "3a5f382228494c023a8aeeaecb0e71877bf0ec31dd223f3cfd8f93fec0bd0611"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKBanner.xcframework.zip",
                      checksum: "d9c8b815aaa08153b5610bef82677ea78d200c87800b4ff61880984fb7a25b38"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKBidding.xcframework.zip",
                      checksum: "f62ebc3dab88ec54d6bf5198949d62869df65a4d97ef25cae1f24ff64e4cd890"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "2166107bef95171dc2d4f00a394efb18aaa2655619b6faad97e4ede11dd57b1a"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "bfb6346c6bab8ad055e5e64121717de9ecc5d75123e86ebe8924a67efdad2f1a"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKReward.xcframework.zip",
                      checksum: "2b4977cade56daf01ae42c9ef725c7a59e4ac5962f627005908017d0570ea269"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKSplash.xcframework.zip",
                      checksum: "9d5166a0b5f16ac4a4986482317f2fa270bfa74705dbf43185b1f1d48fcd2033"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.2/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "d19ce36c5deb33bb663c8afe1177a3d4d2353896c4f8ac7ae415e1e0824c4571"),
      
        
        .target(
            name: "MintegralAdSDK",
            dependencies: [
                .target(name: "MTGSDK"),
                .target(name: "MTGSDKBanner"),
                .target(name: "MTGSDKBidding"),
                .target(name: "MTGSDKNewInterstitial"),
                .target(name: "MTGSDKInterstitialVideo"),
                .target(name: "MTGSDKReward"),
                .target(name: "MTGSDKSplash"),
                .target(name: "MTGSDKNativeAdvanced")
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("WebKit"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("AdSupport"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("MobileCoreServices"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("Accelerate" ),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Security"),
                .linkedFramework("AppTrackingTransparency"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("bz2"),
                .linkedLibrary("xml2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("c++abi"),
                .linkedLibrary("c++"),
            ]),
        .testTarget(
            name: "MintegralAdSDKTests",
            dependencies: ["MintegralAdSDK"]),
    ]
)