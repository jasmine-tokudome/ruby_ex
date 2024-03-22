class C
  VAR=0
  def VAR=v
    VAR = v
  end
  def VAR
    VAR
  end
end

c = C.new
c.VAR = 3
puts c.VAR
