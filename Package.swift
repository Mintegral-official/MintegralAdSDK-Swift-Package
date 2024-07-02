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
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDK.xcframework.zip",
                      checksum: "889bca7bba81449f58aaa012d8875688f24ea9714b9b8d8e0ff7b8793296efc6"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKBanner.xcframework.zip",
                      checksum: "9f586ce074b5308d1c9ff61bf9327450441ece0585f3f6de04e0b5170098331d"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKBidding.xcframework.zip",
                      checksum: "9091a123ae215901e89e68bb880eaeb3e409cacc0a88f680646e374de3e90294"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "53a733de1eaf41e88b3e4af66591470d5dce638b8446a36f49e16fe06a7c5e40"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "c79bd1af489f2ecc2f7539f6433e130a0238436d82917d5de2d7773c5096f98c"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKReward.xcframework.zip",
                      checksum: "13a7c198addb32c7f33ed323906e91930276dc24581cc95e0480eb0d8c1f82d3"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKSplash.xcframework.zip",
                      checksum: "a9325270537241a21a5a1aa2e8479a7a1876fa87377b629174f2bd9bb6d4c9e1"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/7.6.7/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "b2dc3423f56e8c1806befd4eb2256b914064785719be975c85b45012bed42ef7"),
      
        
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


