class Foo
  def initialize(a)
    @a = a
  end
  def method1
    @a
  end
end

foo1 = Foo.new(1)

def foo1.methodB
  @a + 100
end

p foo1.methodB
foo2 = Foo.new(1)
p foo2.methodB
