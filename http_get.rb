require 'uri'
url = URI.parse("http://www.ruby-lang.org/jp/")
p url.scheme
p url.host
p url.port
p url.path
p url.to_s
