Pod::Spec.new do |spec|
  spec.name         = 'MyAppSkillz'
  spec.version      = '2025.0.50'

  spec.license      = { :type => 'Proprietary', :text => 'The full license is available on our website: https://www.skillz.com/legal/#dev-terms' }
  spec.homepage     = 'https://developers.skillz.com'
  spec.authors      = { 'Skillz Inc.' => 'integrations@skillz.com' }
  spec.summary      = 'A multiplayer cash tournament framework for mobile.'

  spec.platform     = :ios
  spec.source       = { :http => 'https://github.com/skillz/SkillzPod/archive/refs/tags/2025.0.50.zip', :sha1 => 'ffa31387919e89f758091499681c0e009b9fbc3b'}

  spec.source_files = '**/*.h'
  spec.public_header_files = "Skillz.framework/Headers/*.h"

  spec.module_name = 'Skillz'
  spec.ios.vendored_frameworks = 'Skillz.framework'
  spec.ios.deployment_target  = '12.0'

  spec.frameworks = 'CoreImage', 'CoreFoundation', 'PassKit', 'UIKit', 'JavaScriptCore', 'iAd'
  spec.libraries = 'sqlite3', 'z', 'xml2'
  
  # Add dynamic framework dependencies here
  spec.dependency 'Apple-Cocoapod-KochavaTracker', '= 6.1.1'
  spec.dependency 'OpenTelemetrySwiftApi', '= 1.6.0'

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'LD_RUNPATH_SEARCH_PATHS' => '/usr/lib/swift', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES'}
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'LD_RUNPATH_SEARCH_PATHS' => '/usr/lib/swift', 'ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES' => 'YES'}

end
