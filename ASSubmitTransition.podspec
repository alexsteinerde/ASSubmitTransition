#
# Be sure to run `pod lib lint ASSubmitTransition.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASSubmitTransition'
  s.version          = '0.1.0'
  s.summary          = 'Submit animation class for iOS'

  s.description      = "With this library you can add a submit transition between view to your iOS apps."

  s.homepage         = 'https://github.com/alexsteinerde/ASSubmitTransition'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Alex Steiner' => 'privat@alexsteiner.de' }
  s.source           = { :git => 'https://github.com/alexsteinerde/ASSubmitTransition.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'ASSubmitTransition/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ASSubmitTransition' => ['ASSubmitTransition/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
