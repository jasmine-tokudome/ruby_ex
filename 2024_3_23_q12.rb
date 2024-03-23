class Super
  def greet
    "Hello "
  end
end
class Sub < Super
  def greet
    super + "world"
  end
end
p Sub.new.greet
