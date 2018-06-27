require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = package['name']
  s.version         = package['version']
  s.summary         = package['description']
  s.license         = package['license']
  s.homepage        = package['homepage']
  s.authors         = { 'Ali Najafizadeh' => 'a.najafizadeh@gmail.com' }
  s.source          = { :git => "https://github.com/wix-playground/react-native-webview-bridge" }
  s.source_files    = "ios/*.{h,m}"
  s.platform        = :ios, "7.0"
  s.dependency        'React'
end
