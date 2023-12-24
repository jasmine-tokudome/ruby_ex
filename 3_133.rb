def func x
  x + yield
end

proc = Proc.new{2}
p func(1,&proc)
