hello = Proc.new do |name|
  puts "Hello,#{name}."
end

hello.call("World")
hello.call("Ruby")

Good_night = Proc.new do |name|
  puts "Good night,#{name}."
end

Good_night.call("World")
Good_night.call("Ruby")
