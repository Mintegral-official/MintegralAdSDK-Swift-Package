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
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDK.xcframework.zip",
                      checksum: "c404f8a64dcf32791d9356d4d2c245896847a1e9a6ab680479137837e37d7854"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKBanner.xcframework.zip",
                      checksum: "48e3d0c6dce660400bc6167bb64d4b0b56c423e8271184027b1bf8141613bea8"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKBidding.xcframework.zip",
                      checksum: "56cb973c39321d2b4de1baa33ac97d3685520b56d5921c3765460d59c3d7262f"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "2ef0e580cd39ea8efbea136e3ec3af96be3d8805606c5d86cd29459003035a70"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "53857cb051456c23ea36ec1a88554ff087b9e8f23742019b9ac40fabf0014bbb"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKReward.xcframework.zip",
                      checksum: "f2c2e0e953bf89118b8ece1bb18f8d31c4fd25980f40e5e4b7ec3b64040132de"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKSplash.xcframework.zip",
                      checksum: "d145d37d95e7b9ab6dcbdc0d68375316768c217782709b5ad460285e5ca9b307"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.0.6/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "4f04c225efb9ee0012518188eec7b47ad320e10b9fd206c1c1419ad359fb3e4e"),
      
        
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