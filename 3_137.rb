def func
  proc = lambda{return 1}
  proc.call
  2
end

p func
