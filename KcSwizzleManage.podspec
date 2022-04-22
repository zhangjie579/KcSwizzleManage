#
# Be sure to run `pod lib lint KcSwizzleManage.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KcSwizzleManage'
  s.version          = '0.0.4'
  s.summary          = 'A short description of KcSwizzleManage.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/张杰/KcSwizzleManage'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张杰' => '527512749@qq.com' }
  s.source           = { :git => 'https://github.com/zhangjie579/KcSwizzleManage.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  # swifty版本号
  s.swift_version = "5.0"

  # s.source_files = 'KcSwizzleManage/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KcSwizzleManage' => ['KcSwizzleManage/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.user_target_xcconfig = {
    "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES",
      # OC环境, Preprocessor Macros去定义
#      "GCC_PREPROCESSOR_DEFINITIONS" => "KcSwizzleManage=1",
      # swift环境, 需要加上 -D
      "OTHER_SWIFT_FLAGS" => "-D KcSwizzleManage",
#      "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "KcSwizzleManage",
  }
  
  # hook 关联对象方法
  s.subspec 'Associations' do |ss|
      ss.source_files = 'KcSwizzleManage/Classes/Associations/**/*'
  end
  
  # hook 关联对象方法
  s.subspec 'Rx' do |ss|
      ss.source_files = 'KcSwizzleManage/Classes/Rx/**/*'
      ss.dependency "RxSwift"
  end
  
end
