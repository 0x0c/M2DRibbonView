#
# Be sure to run `pod lib lint M2DRibbonView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "M2DRibbonView"
  s.version          = "0.1.1"
  s.summary          = "A ribbon shape view."
  s.description      = <<-DESC
A ribbon shape view.
You can rift left and right edge.
                       DESC
  s.homepage         = "https://github.com/0x0c/M2DRibbonView"
  s.screenshots     = "https://raw.github.com/0x0c/M2DRibbonView/master/images/1.png"
  s.license          = 'MIT'
  s.author           = { "Akira Matsuda" => "akira.matsuda@me.com" }
  s.source           = { :git => "https://github.com/0x0c/M2DRibbonView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
