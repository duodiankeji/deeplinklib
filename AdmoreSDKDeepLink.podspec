Pod::Spec.new do |s|
  s.name             = 'AdmoreSDKDeepLink'
  s.version          = '0.1.0'
  s.summary          = 'Duodian Admore DeepLink SDK on ios'
  s.homepage         = 'https://github.com/duodiankeji/deeplinklib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanglin.sun' => 'mkoosun@gmail.com' }
  s.source           = { :git => 'https://github.com/duodiankeji/deeplinklib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'AdmoreSDKDeepLink/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.vendored_libraries  = 'AdmoreSDKDeepLink/Libraries/libAdmoreDeepLink.a'
  s.frameworks = 'Foundation'
end
