
Pod::Spec.new do |s|
  s.name         = "RNUnity2019"
  s.version      = "1.0.0"
  s.summary      = "RNUnity2019"
  s.description  = <<-DESC
                  RNUnity2019
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNUnity2019.git", :tag => "master" }
  s.source_files  = "RNUnity2019/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  