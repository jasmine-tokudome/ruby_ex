class Speaker
  @message = "Hello!"

  class << self
    @message = "howfy!"

    def speak
      @message
    end
  end
end

puts Speaker.singleton_class.instance_variable_get(:@message)
