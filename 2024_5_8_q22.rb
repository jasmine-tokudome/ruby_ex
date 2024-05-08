class Integer
    def +(other)
      self.-(other)
    end
  end
  
  p 1 + 1

  p 1.class.ancestors
  p Numeric.method_defined?(:+)
  p  Integer.method_defined?(:+)
  p Fixnum.method_defined?(:+)
  