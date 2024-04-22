class Greeter
  class << self
    def hello
      puts "Hello there!"
    end
  end
end

Greeter.new.class.hello
