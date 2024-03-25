class A
  @@x = 0
  class << self
    @@x = 1
    def x
      @@x
    end
  end
  def x
    @@x = 2
  end
end

class B < A
  @@x = 3
end

p A.x
