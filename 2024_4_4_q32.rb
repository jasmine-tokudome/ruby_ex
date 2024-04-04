class C
  def self._singleton
    class << C
      self
    end
  end
end

p C._singleton

class C
end

def C._singleton
  self
end

p C._singleton

class C
end

class << C
  def _singleton
    self
  end
end

p C._singleton

class C
end
p C.singleton_class
