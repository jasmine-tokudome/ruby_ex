# # 4-32
# foo_class = Class.new
#
# # 4_33
# someClass = Class.new
# someClass.new
#
# # 4_34
#
# FooExt=Class.new(Foo) do
#   def initialize(a,b)
#     @b=b
#     super(a)
#   end
#   def method2(c)
#     @a+@b+c
#   end
# end
#
# # 4_35
# class Class
#   def mc_method1
#     1
#   end
# end
#
# p Foo.c_method1
# p Strins.c_method1
# p object.c_method1

# 4_36
class Foo
  def Foo.c_method2;2;end
end

p Foo.c_method2

# 4_37
class Foo
  def self.c_method3;3;end
end

p Foo.c_method3

# 4_38
class Foo
class << self
  def c_method4;4;end
  def c_method5;5;end
end
end

p Foo.c_method4
p Foo.c_method5
