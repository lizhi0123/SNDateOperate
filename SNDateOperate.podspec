Pod::Spec.new do |s|
  s.name         = "SNDateOperate"
  s.version      = "0.0.1"
  s.summary      = "SNDateOperate"
  s.description  = "SNDateOperate"
  s.homepage     = "https://github.com/lizhi0123/SNDateOperate"
  s.author       = { "sunny" => "zhang_zhi_li@163.com" }
  s.source       =  :git => 'https://github.com/lizhi0123/SNDateOperate.git', :tag => 'v0.0.1' 
  s.platform     = :ios
  s.source_files = 'SNDateOperate/*'
  s.requires_arc = true
end
