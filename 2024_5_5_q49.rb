require "singleton"

class Foo
    include singleton
end

x = Foo.instance
y = Foo.instance
p x.equal?(y)
