class Stack
  def initialize
    @contents = []
  end

  [:push, :pop].each do |name|
    define_method(name) do |*arg|
      @contents.send(name,*name)
    end
  end
end

stack = Stack.new
stack.push("foo")
stack.push("bar")
p stack.pop
