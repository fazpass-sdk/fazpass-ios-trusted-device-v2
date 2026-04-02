Pod::Spec.new do |spec|
spec.name       = "IosTrustedDeviceV2"
spec.version    = "2.0.6"
spec.summary    = "IOS Trusted Device"
spec.description    = <<-DESC
IOS counterpart for fazpass trusted device.
DESC
spec.license    = { :type => "MIT", :file => "LICENSE" }
spec.author    = { "Citcall Indonesia" => "citcall.dev@gmail.com" }
spec.homepage    = "https://fazpass.com"
spec.documentation_url = "https://doc.fazpass.com"
spec.platform    = :ios, "13.0"
spec.swift_versions = "5.7"
spec.source    = { :git => "https://github.com/fazpass-sdk/fazpass-ios-trusted-device-v2.git", :tag => "#{spec.version}" }

spec.dependency 'DeviceKit'
spec.dependency 'Firebase/Analytics'
spec.dependency 'Firebase/Messaging'

spec.vendored_frameworks = "XCFrameworks/#{spec.version}/IosTrustedDeviceV2.xcframework"

end