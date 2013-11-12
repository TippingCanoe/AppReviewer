Pod::Spec.new do |s|
  s.name         = "AppReviewer"
  s.version      = "0.0.1"
  s.summary      = "Simple static class to navigate to appstore"
  s.homepage     = "http://www.tippingcanoe.com"
  s.license      = 'Public Domain'
  s.author       = { "Jeff Friesen" => "j.friesen@tippingcanoe.com" }
  s.source       = { :git => "git@github.com:TippingCanoe/AppReviewer.git", :tag => "0.0.1" }
  s.source_files  = 'AppReviewer', 'AppReviewer/*.{h,m}'
  s.requires_arc = true
end
