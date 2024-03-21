require "uri"

uri = URI.parse"http://www.ruby-lang.org/japan/man/html/index.html"
p uri
p uri.scheme
p uri.host
p uri.port
p uri.path
