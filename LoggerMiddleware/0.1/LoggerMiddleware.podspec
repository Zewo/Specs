Pod::Spec.new do |s|
  s.name = 'LoggerMiddleware'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'Logger middleware for Swift 2 (Linux ready)'
  s.homepage = 'https://github.com/Zewo/LoggerMiddleware'
  s.authors = { 'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.source = { :git => 'https://github.com/Zewo/LoggerMiddleware.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Dependencies/Copyist/*.c', 'LoggerMiddleware/**/*.swift'

  s.xcconfig =  {
    'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/LoggerMiddleware/Dependencies'
  }

  s.preserve_paths = 'Dependencies/*'

  s.dependency 'HTTPMiddleware'

  s.requires_arc = true
end