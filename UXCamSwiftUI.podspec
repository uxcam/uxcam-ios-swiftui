Pod::Spec.new do |s|
  s.name     			= 'UXCamSwiftUI'
  s.version  			= '0.1.0'
  
  s.summary 			= "UXCam SwiftUI wrapper SDK for iOS applications"
  s.description 		= <<-DESC
                  Visit https://uxcam.com to get a key.
                  This is version #{s.version} of the SDK - see CHANGELOG for details
                  DESC
  s.homepage 			= "https://uxcam.com/"
  s.license      		= {
    'type' => 'Copyright',
    'text' => 'Copyright (c) 2021, UXCam Inc. All rights reserved.'
  }

  s.author   			= { 'UXCam' => 'admin@uxcam.com' }
  s.social_media_url 	= "https://www.twitter.com/uxcam"
  s.documentation_url 	= 'https://help.uxcam.com/hc/en-us/categories/360001001392-Tailor-for-Success'
  
  s.platform 			= :ios, 13.0

  s.source 				= { :http => "https://raw.githubusercontent.com/uxcam/ios-swiftui/#{s.version}/UXCamSwiftUI.xcframework.zip" }
  s.vendored_frameworks = 'UXCamSwiftUI.xcframework'
  s.static_framework 	= true
  s.requires_arc		= true
  
  s.dependency 'UXCam', '~>3.4.0'

end