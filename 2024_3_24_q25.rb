f = Fiber.new{
  Fiber.yield "foo"
}

puts f.resume
