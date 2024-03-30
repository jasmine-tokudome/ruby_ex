require "time"

t = Time.strptime("00000024021993", "%S%M%H%d%m%Y")
puts t.iso8601
