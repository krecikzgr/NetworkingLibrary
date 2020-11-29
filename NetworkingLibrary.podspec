#
# Be sure to run `pod lib lint NetworkingLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NetworkingLibrary'
  s.version          = '1.0'
  s.summary          = 'The library created by GSD Software for creating iOS apps'


  s.description      = 'With this library the user can easily integrate his iOS app, with DOCUframe backend'

  s.homepage         = 'https://www.gsd-software.com/pl/start/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Adrian Kaleta' => 'kaleciarz@gmail.com' }
  s.source           = { :git => 'https://github.com/krecikzgr/NetworkingLibrary.git', :tag => s.version.to_s }
  s.source_files     = 'NetworkingLibrary/Core/**/*'


  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'



end

