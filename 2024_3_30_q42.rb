module Mixin
  def greet
    puts "Hello World!"
  end
end

class SomeClass
  include Mixin
end

SomeClass.new.greet