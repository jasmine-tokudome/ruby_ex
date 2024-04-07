module MathConstant
  PI = 3.14
end

class Area
  include MathConstant

  def circle(r)
    r * r * PI
  end
end

area = Area.new
p area.circle 10

class Area
  def circle(r)
    r * r * MathConstant::PI
  end
end

area = Area.new
p area.circle 10

module MathConstant
  PI = 3.14
end
