class A
  @@x = 1
end

class B < A
  def self.x
    @@x
  end
end

class C < A
  def self.inc
    @@x += 1
  end
end

C.inc
p B.x
