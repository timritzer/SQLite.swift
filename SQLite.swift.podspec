#
# `pod lib lint SQLite.swift.podspec' fails - see
#    https://github.com/CocoaPods/CocoaPods/issues/4607
#

Pod::Spec.new do |s|
  s.name             = "SQLite.swift"
  s.version          = "0.10.2"
  s.summary          = "A type-safe, Swift-language layer over SQLite3 for iOS and OS X."

  s.description      = <<-DESC
    SQLite.swift provides compile-time confidence in SQL statement syntax and
    intent.
                       DESC

  s.homepage         = "https://github.com/stephencelis/SQLite.swift"
  s.license          = 'MIT'
  s.author           = { "Stephen Celis" => "stephen@stephencelis.com" }
  s.source           = { :git => "https://github.com/stephencelis/SQLite.swift.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/stephencelis'

  s.module_name      = 'SQLite'
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"

  s.preserve_paths = 'CocoaPods/**/*'
  s.pod_target_xcconfig = {
    'MODULEMAP_FILE[sdk=macosx*]'                => '$(SRCROOT)/SQLite.swift/CocoaPods/macosx/module.modulemap',
    'MODULEMAP_FILE[sdk=iphoneos*]'              => '$(SRCROOT)/SQLite.swift/CocoaPods/iphoneos/module.modulemap',
    'MODULEMAP_FILE[sdk=iphonesimulator*]'       => '$(SRCROOT)/SQLite.swift/CocoaPods/iphonesimulator/module.modulemap',
    'MODULEMAP_FILE[sdk=appletvos*]'             => '$(SRCROOT)/SQLite.swift/CocoaPods/appletvos/module.modulemap',
    'MODULEMAP_FILE[sdk=appletvsimulator*]'      => '$(SRCROOT)/SQLite.swift/CocoaPods/appletvsimulator/module.modulemap',
    'MODULEMAP_FILE[sdk=watchos*]'               => '$(SRCROOT)/SQLite.swift/CocoaPods/watchos/module.modulemap',
    'MODULEMAP_FILE[sdk=watchsimulator*]'        => '$(SRCROOT)/SQLite.swift/CocoaPods/watchsimulator/module.modulemap',
  }

  s.libraries = 'sqlite3'
  s.source_files = 'SQLite/**/*.{c,h,m,swift}'
  s.private_header_files = 'SQLite/Core/fts3_tokenizer.h'
end
