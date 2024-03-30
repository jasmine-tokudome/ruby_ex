module Mixin
  def this_object
    self
  end
end

class Identity
  include Mixin
end


p Identity.new.this_object.class
