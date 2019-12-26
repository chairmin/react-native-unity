
Pod::Spec.new do |s|
  s.name         = "RNUnity2019"
  s.version      = "1.0.0"
  s.summary      = "RNUnity2019, need unity2019.3+"
  s.description  = <<-DESC
                  react-native-unity
                   DESC
  s.homepage     = "https://github.com/chairmin/react-native-unity"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "chaimyu" => "yucm@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/chairmin/react-native-unity.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m,mm}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

  