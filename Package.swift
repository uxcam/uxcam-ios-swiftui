// swift-tools-version:5.3
import PackageDescription

let version = "1.0.7"
let checksum = "672dc5a6a12c10edf9548eaf3a065e6f7c748afbead202f8f620948943a18171"
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
        
