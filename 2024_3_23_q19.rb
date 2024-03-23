class Object
  X="X"
  def self.const_missing a
    p "#{a}"
  end
end
Y
