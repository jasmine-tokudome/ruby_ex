def func x
  x + yield
end

p func(1){2}
