class Foo
  @@var = 0

  def var
    @@var
  end

  def var=(value)
    @@var = value
  end
end

class Bar < Foo
end

foo = Foo.new
foo.var += 1
bar = Bar.new
bar.var += 2

puts "#{foo.var}/#{bar.var}"
