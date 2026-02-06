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
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDK.xcframework.zip",
                      checksum: "b0cd35b11144d37a85c7b6b97b00e41e8a7db978baa97f4ef053237c7c6e07ae"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKBanner.xcframework.zip",
                      checksum: "a11fa862f077032e3c9cbaf478868e7cd305eab3286887e0f7b39ec1de1db99b"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKBidding.xcframework.zip",
                      checksum: "3d271b49e4951f5ab2c65818e66e4f2156c9c7996e543ddf9c16fee5676cc840"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "e924ddf1c9b39047d750fc9487d4a7d79b9565ad659c290bff50387c2d4e764f"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "f06c6604b072d0d2e1c069c68186cc8a61c9fe20ab11601fa87bb97a3917d35b"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKReward.xcframework.zip",
                      checksum: "ff794df151e6a0566710087ab8116a1d3bb9ece7fb9da4878f5506221698c5a4"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKSplash.xcframework.zip",
                      checksum: "2bf41771b3507e0fa09fa1ff893663cf8a7d1d2dabe2cc9e7ea3dc1653500eae"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.7/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "2235593dcb1f6ecfe2483c8268bdf7e322839649a24bc26486a8a90bf843672b"),
      
        
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