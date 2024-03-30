class Identity
  def self.this_object
    self.class
  end

  def this_object
    self
  end
end

p Identity.this_object.class
p Identity.new.this_object.class
