def multiply_by(n)
  n * yield
end

p multiply_by(4){ 3 + 2 }
