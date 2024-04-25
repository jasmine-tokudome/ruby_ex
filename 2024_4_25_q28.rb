def x
  puts "x"
end

def y
  puts "y"
  throw :done
end

def z
  puts "z"
end


catch :done do
  x
  y
  z
end

puts "done!"
