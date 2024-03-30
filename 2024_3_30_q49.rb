require "singleton"

class Foo
  include Singleton
end

x = Foo.instance
y = Foo.instance
p x.equal?(y)
