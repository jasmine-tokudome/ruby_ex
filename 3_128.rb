def func y
  y + yield
end

x = 2
p func(1){x+=2}
p x
