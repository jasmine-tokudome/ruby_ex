class Foo
  def initialize(a)
    @a = a
  end

  def method1
    @a
  end
end

module Bar
  def methodA
    @a
  end
end

class FooExt < Foo
  include Bar

  def initialize(a,b)
    @b = b
    super a
  end

  def method2(c)
    @a + @b + c
  end
end

fooExt1 = FooExt.new(3,4)
p fooExt1.methodA

p FooExt.ancestors
p FooExt.superclass
p FooExt.instance_methods(false)

foo1 = Foo.new(1)
def foo1.methodB
  @a + 100
end

p foo1.methodB
foo2 = Foo.new(1)
# p foo2.methodB

foo1 = Foo.new(1)
singleton_class = class << foo1
  self
end

p singleton_class

foo1 = Foo.new(1)
class << foo1
  def methodC; @a + 200; end
end

p foo1.methodC

class C1
  p self
  def method1
    self
  end
end

c1 = C1.new
p c1 == c1.method1

class C2
  def method1
    def method2
    end
  end
end

C2.instance_methods(false)
C2.new.method1
