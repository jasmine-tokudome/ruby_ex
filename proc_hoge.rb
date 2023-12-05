def hoge(step = 1)
  current = 0
  Proc.new {
    current += step
  }
end

p1 = hoge
p2 = hoge(2)

p p1.call
p p1.call
p p1.call
p p2.call
p p2.call

p p2.call
