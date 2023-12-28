class Foo
  def initialize(a)
    @a = a
  end

  def method1
    @a
  end
end

class FooExt < Foo
  def initialize(a,b)
    @b = b
    super a
  end

  def method2(c)
    @a + @b + c
  end
end

p FooExt.superclass == Foo
