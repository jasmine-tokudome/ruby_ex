class A
  def foo
    self.bar
  end

  private

  def bar
    "baz"
  end

  def self.bar
    "quux"
  end
end

puts A.new.foo
