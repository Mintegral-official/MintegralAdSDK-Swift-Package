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
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDK.xcframework.zip",
                      checksum: "ae4fe9e03cc099f6d435bab6adeabbadba59adb8330f6d42db7e655e38dc3ff4"),
        .binaryTarget(name: "MTGSDKBanner",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKBanner.xcframework.zip",
                      checksum: "c3f5a1351a656668183264acc6c1a40060c50de2e19fcdcc0289b36711b3b6e8"),
        .binaryTarget(name: "MTGSDKBidding",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKBidding.xcframework.zip",
                      checksum: "dd8209f60a51f3cb2e960e4d0ed5bbd0e4ace88017f27dc2558a7c43ae3a302c"),
        .binaryTarget(name: "MTGSDKNewInterstitial",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKNewInterstitial.xcframework.zip",
                      checksum: "7c4506b16be1946217249a9415825515bb0b498fb46f0186ab2141cbc38bc12f"),
        .binaryTarget(name: "MTGSDKInterstitialVideo",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKInterstitialVideo.xcframework.zip",
                      checksum: "acc7a02041259be587513bab860ff0a6db493e45ecc36b8c2ca70c525e1617b8"),
        .binaryTarget(name: "MTGSDKReward",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKReward.xcframework.zip",
                      checksum: "eee6f3c5a13ce4e75295b85407cc042d27dd4cd0b18d65d2ac0487f9e7cde458"),
        .binaryTarget(name: "MTGSDKSplash",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKSplash.xcframework.zip",
                      checksum: "3364abd42aad584d74ae2b96ad612f25899f73db9c087071165cf0874634f6a5"),
        .binaryTarget(name: "MTGSDKNativeAdvanced",
                      url:"https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package/releases/download/8.1.3/MTGSDKNativeAdvanced.xcframework.zip",
                      checksum: "2ca2576e4315be66792f9f58594e31d7e754bafb62f80c4b5e26f23d158cf9ae"),
      
        
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
            resources: [
                .copy("Resources/MTGResources.bundle")
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
