print("Hello,Ruby.\n")


class Foo
  def initialize
    @x= 1
  end
  def x
    @x
  end
  def y
    @y
  end
end

class Buzz < Foo
  def zzz
    @x
  end
end

