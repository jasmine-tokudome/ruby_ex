def func y
  y + yield
end

func(1) do
  x = 2
end

p x
