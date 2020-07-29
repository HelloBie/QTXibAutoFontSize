

Pod::Spec.new do |s|


s.name         = "QTXibAutoFontSize"
s.version      = "0.1"
s.summary      = "QTXibAutoFontSize"


s.description  = "QTXibAutoFontSize"

s.homepage     = "https://github.com/HelloBie/QTXibAutoFontSize.git"

s.license      = "MIT"

s.author             = { "不不不紧张" => "1005903848@qq.com" }

s.source       = { :git => "https://github.com/HelloBie/QTXibAutoFontSize.git", :tag => "#{s.version}" }


s.ios.frameworks = 'Foundation'

s.platform     = :ios, "8.0"

s.source_files  = 'QTXibAutoFontSize/QTXibAutoFontSize/QTXibAutoFontSize/*'

end
