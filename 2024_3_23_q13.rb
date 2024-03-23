module M
  def foo
    self.class
  end
end
class C
  include M
end
p C.new.foo
