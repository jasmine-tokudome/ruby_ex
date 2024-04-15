class S
  @@val = 0
  def initialize
    @@val += 1
  end
end

class C < S
  class << C
    @@val += 1
  end
end

C.new
pp C.class_variable_get(:@@val)
C.new
pp C.class_variable_get(:@@val)
S.new
pp C.class_variable_get(:@@val)
S.new

p C.class_variable_get(:@@val)
