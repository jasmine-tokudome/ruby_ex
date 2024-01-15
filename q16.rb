def foo(x:, y:, z:)
  p [x, y, z]
end

h = {x: 1, y: 2, z: 3}
foo(**h)
