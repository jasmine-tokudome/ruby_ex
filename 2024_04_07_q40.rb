def bar(&block)
  block.yield
end

bar do
  puts "hello, world"
end

def bar(&block)
  block.call
end

bar do
  puts "hello, world"
end

def bar(n, &block)
  block.call
end

bar(5) {
  puts "hello, world"
}
