Pod::Spec.new do |s|
  s.name = 'GrandCentralDispatch'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'GCD for Swift 2 (Linux ready)'
  s.homepage = 'https://github.com/Zewo/GrandCentralDispatch'
  s.authors = { 'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.source = { :git => 'https://github.com/Zewo/GrandCentralDispatch.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Dependencies/Belle/*.c', 'GrandCentralDispatch/**/*.swift'

  s.xcconfig =  {
    'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/GrandCentralDispatch/Dependencies'
  }

  s.preserve_paths = 'Dependencies/*'

  s.requires_arc = true
end