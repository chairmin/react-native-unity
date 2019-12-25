
Pod::Spec.new do |s|
  s.name         = "react-native-unity"
  s.version      = "1.0.0"
  s.summary      = "react-native-unity, need unity2019.3+"
  s.description  = <<-DESC
                  react-native-unity
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "chaimyu" => "yucm@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/chairmin/react-native-unity.git", :tag => "master" }
  s.source_files  = "ios/**/*.{h,m,mm}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end

  