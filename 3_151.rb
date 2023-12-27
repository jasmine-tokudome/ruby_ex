f = Fiber.new do
  (1..3).each do |i|
    Fiber.yield i
  end
  nil
end

p f.resume
p f.resume
p f.resume
p f.resume
p f.resume
