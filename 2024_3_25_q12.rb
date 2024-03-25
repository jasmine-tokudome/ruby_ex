def method
  puts "Hello, World"
end

alias old_method method

def method
  old_method
  puts "Hello, Ruby World"
end

method
