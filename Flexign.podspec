#
# Be sure to run `pod lib lint Flexign.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Flexign'
  s.version          = '0.0.1'
  s.summary          = 'Flexible Design System for iOS.'
  s.homepage         = 'https://github.com/tombartkowski/Flexign'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tombartkowski' => 'tomaszbartkowski.studio@gmail.com' }
  s.source           = { :git => 'https://github.com/tombartkowski/Flexign.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.source_files = 'Flexign/Sources/**/*'
end
