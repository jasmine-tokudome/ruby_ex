class Parent
  attr_reader :name

  def initialize name
    @name = name
  end
end

class Child < Parent
  def initialize(name)
    @name = "Child"+name
  end
end

puts Child.new("Hoge").name
