class Speaker
  @message = "Hello!"

  class << self
    @message = "Howdy!"

    def speak
      @message
    end
  end
end

puts Speaker.speak
puts Speaker.instance_variable_get(:@message)
