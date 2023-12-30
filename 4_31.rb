class C
  def foo
    puts "C#foo"
  end

  def bar
    foo
  end
end

module M
  refine C do
    def foo
      puts "C#foo in M"
    end
  end
end

x1 = C.new
x1.foo

using M

x2 = C.new
x2.foo
x2.bar
