class Speaker
  @message = "Hello!"

  class << self
    @message = "Howdy!"
  end
end

class << Speaker
  p @message
end
