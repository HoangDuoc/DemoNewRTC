
Pod::Spec.new do |s|
  s.name             = 'DemoNewRTC'
  s.version          = '0.1.1'
  s.summary          = 'Developed by MyTeam'

  s.description      = <<-DESC
The MyTeam platform, developed by MyTeam, makes it easy to embed high-quality interactive video, voice, messaging, and screen sharing into web and mobile apps.
                       DESC

  s.homepage         = 'https://google.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HoangDuoc' => 'duochv@stringee.com' }
  s.source           = { :git => 'https://github.com/HoangDuoc/DemoNewRTC.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

  s.source_files = 'DemoNewRTC/Classes/**/Stringee.framework/Versions/A/Headers/*.h'
  s.public_header_files = 'DemoNewRTC/Classes/**/Stringee.framework/Versions/A/Headers/*.h'

  s.frameworks = 'CoreFoundation', 'VideoToolbox', 'AudioToolbox', 'AVFoundation', 'GLKit'
  s.libraries = 'icucore', 'stdc++'

  s.vendored_frameworks = 'DemoNewRTC/Classes/**/Stringee.framework'
  s.dependency "GoogleWebRTC", '~> 1.1'

end
