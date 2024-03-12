local = 0

p1 = lambda do |arg1, arg2|
  arg1, arg2 = arg1.to_i, arg2.to_i
  local += [arg1, arg2].max
end

p1.call("1", "2")
p1.call("7","5")
# p1.call("9")

p local
