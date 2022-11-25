require 'json'
Pod::Spec.new do |s|
   package=JSON.parse(File.read(File.join(__dir__,'package.json')))

   s.name          = "react-native-app-upgrade"
   s.version       = package['version']
   s.authors       = package['author']
   s.summary       = package['description']
   s.homepage      = "https://github.com/songxiaoliang/react-native-app-upgrade#readme"
   s.license       = "MIT"
   s.platforms     = { :ios => "8.0", :tvos => "9.0" }
   s.source        = { :git => "https://github.com/songxiaoliang/react-native-app-upgrade.git", :tag => "v#{s.version}" }
   s.source_files  = "ios/*.{h,m}"

   s.dependency 'React-Core'
 end
