class Human
    NAME = "Unknown"
  
    def name
      p self
      p self.class
      NAME
    end
  end
  
  class Noguchi < Human
    NAME = "Hideyo"
  end
  
  puts Noguchi.new.name
