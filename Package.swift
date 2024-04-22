// swift-tools-version:5.3
import PackageDescription

let version = "1.0.7"
let checksum = "d59095c5dd4e4de9a8ea9602fabecdb9319e54ea63331785d2ea06f2c16831b8"
let repoName = "swiftui-internal"

let package = Package(
    
    name: "UXCamSwiftUI",
    
    platforms: 
    [
        .iOS(.v13)
    ],
    
    products: 
    [
        .library(
			name: "UXCamSwiftUI",
            targets: ["UXCamSwiftUI", "UXCamSwiftUIWrapper"]
		)
    ],
	
	dependencies:
	[
		.package(name: "UXCam", url: "https://github.com/uxcam/uxcam-ios-sdk", from: Version(3, 6, 11)),
	],
	
    targets: 
    [
		// 'UXCamSwiftUIWrapper' target is a way to include the necessary dependency that the binary XCFramework in UXCamSwiftUI requires.
		// See https://forums.swift.org/t/swiftpm-binary-target-with-sub-dependencies/40197/13 for a long thread on the deficiencies of the `binaryTarget`
		.target(
				name: "UXCamSwiftUIWrapper",
				dependencies: ["UXCam"],
				path: "UXCamSwiftUIWrapper",
				exclude: ["README.md"]
		),
        .binaryTarget(
            name: "UXCamSwiftUI",
			url: "https://github.com/uxcam/\(repoName)/raw/\(version)/UXCamSwiftUI.xcframework.zip",
			checksum: checksum
		)
    ]
)
        
