#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_telemetrydeck.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_telemetrydeck'
  s.version          = '0.0.1'
  s.summary          = 'TelemetryDeck Wrapper for Flutter Project'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://telemetrydeck.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'
  s.dependency "TelemetryClient"
  s.source = {:git => "https://github.com/TelemetryDeck/SwiftClient.git", :tag => "1.5.1", :branch => "master"}

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.2'
end
