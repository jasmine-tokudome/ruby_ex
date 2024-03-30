module Mixin
  def self.greet
    puts "Hello World!"
  end
end

class SomeClass
  include Mixin
end
