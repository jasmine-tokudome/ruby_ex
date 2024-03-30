module Mixin
  def greet
    puts "Hello World!"
  end
end

class SomeClass
  extend Mixin
end

SomeClass.greet
