class Stack
  def initialize
    @contents = []
  end

  [:push, :pop].each do |name|
    class_eval(<<-EOF)
    def #{name}(*args)
      @contents.send(:#{name}, *args)
    end
  EOF
  end
end

stack = Stack.new
stack.push("foo")
stack.push("bar")
p stack.pop
