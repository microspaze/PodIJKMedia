#
# Be sure to run `pod lib lint PodIJKMedia.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PodIJKMedia'
  s.version          = '0.2.4'
  s.summary          = 'framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
ijkplayer framework.
                       DESC

  s.homepage         = 'https://github.com/microspaze/PodIJKMedia'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'microspaze' => 'microspaze@gmail.com' }
  s.source           = { :http => 'https://raw.githubusercontent.com/microspaze/PodIJKMedia/main/PodIJKMedia.zip', :type => 'zip' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = '*.h'
  
  s.subspec 'Core' do |ss|
      ss.vendored_frameworks = 'IJKMediaFramework.xcframework'
      ss.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "MediaPlayer"
      ss.libraries   = "bz2", "z", "c++"
  end
  
  s.static_framework = true
  
  # s.resource_bundles = {
  #   'PodIJKMedia' => ['PodIJKMedia/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
