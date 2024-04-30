class Identity
  def self.this_object
    self
  end

  def this_object
    self
  end
end

a = Identity.this_object
b = Identity.this_object

c = Identity.new.this_object
d = Identity.new.this_object

p a == b
p c == d

