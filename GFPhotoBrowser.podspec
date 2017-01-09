#
# Be sure to run `pod lib lint GFPhotoBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GFPhotoBrowser'
  s.version          = '0.1.5'
  s.summary          = 'iOS Photos框架的简单封装'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                    一个查询数据的Data source
                    若干相关界面
                       DESC

  s.homepage         = 'https://github.com/guofengld/GFPhotoBrowser'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'guofengld' => 'guofengld@gmail.com' }
  s.source           = { :git => 'https://github.com/guofengld/GFPhotoBrowser.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/guofengjd'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GFPhotoBrowser/GFPhotoBrowser.h'
  
  # s.resource_bundles = {
  #   'GFPhotoBrowser' => ['GFPhotoBrowser/Assets/*.png']
  # }

  s.public_header_files = 'GFPhotoBrowser/GFPhotoBrowser.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'Models' do |ss|
    ss.source_files = 'GFPhotoBrowser/GFPhotosDataSource.{h,m}'
  end

  s.subspec 'Cells' do |ss|
    ss.dependency 'GFPhotoBrowser/Models'
    ss.source_files = 'GFPhotoBrowser/GFPhotoCell.{h,m}', 'GFPhotoBrowser/GFAlbumCell.{h,m}'
  end

  s.subspec 'Controllers' do |ss|
    ss.dependency 'GFPhotoBrowser/Cells'
    ss.source_files = 'GFPhotoBrowser/GFAlbumViewController.{h,m}', 'GFPhotoBrowser/GFPhotoBrowserNavigationController.{h,m}', 'GFPhotoBrowser/GFPhotoBrowserViewController.{h,m}'
  end

end
