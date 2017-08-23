#
# Be sure to run `pod lib lint Telefon.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Telefon'
  s.version          = '0.1.2'
  s.summary          = 'A Swift library to get SIM, Carrier, Phone Info'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Telefon is a small library that gives info about an iPhone's current carrier, SIM info, Wifi Network Info and Reachability Status.
                       DESC

  s.homepage         = 'https://github.com/seyfeddin/Telefon'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'seyfoyun' => 'seyfeddin@wearethread.co' }
  s.source           = { :git => 'https://github.com/seyfeddin/Telefon.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/seyfoyun'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Telefon/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Telefon' => ['Telefon/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration'
  s.dependency 'ReachabilitySwift', '3'
end
