#
# Be sure to run `pod lib lint MKFirebaseObjectMapping.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKFirebaseObjectMapping'
  s.version          = '0.2.1'
  s.summary          = 'Mutable and Immutable Object Mapping for Firebase'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    Objects can implement MKFirebaseObject or MKImmutableFirebaseObject. Note that those objects will intentionally *not*
auto-update (for now. maybe in the future).
                       DESC

  s.homepage         = 'https://github.com/mikumi/MKFirebaseObjectMapping.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michael Kuck' => 'me@michael-kuck.com' }
  s.source           = { :git => 'https://github.com/mikumi/MKFirebaseObjectMapping.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'

  s.source_files = 'MKFirebaseObjectMapping/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MKFirebaseObjectMapping' => ['MKFirebaseObjectMapping/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.ios.dependency 'Firebase/Database', '~> 3.12'
end
