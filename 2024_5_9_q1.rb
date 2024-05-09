class Integer
    def +(other)
      self.-(other)
    end
  end
  
  p 1 + 1

  p 1.class
  p 1.class.ancestors           #=> [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]
p Numeric.method_defined?(:+) #=> false
p Integer.method_defined?(:+) #=> false
p Fixnum.method_defined?(:+)  #=> true
