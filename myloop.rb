def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "num is #{num}"
  break if num > 10
  num *= 2
end

def meth(arg,*args)
  [arg,args]
end
p meth(1)

