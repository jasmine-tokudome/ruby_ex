def func
  proc = Proc.new{return 1}
  proc.call
  2
end

p func
