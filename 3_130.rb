def func
  return 1 if block_given?
  2
end

p func(){}
p func
