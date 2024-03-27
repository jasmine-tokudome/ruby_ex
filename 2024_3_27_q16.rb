obj = Object.new

def obj.hello
  puts "Hi!"
end

copy = obj.clone

copy.hello
