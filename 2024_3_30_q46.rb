class TShirt
  SIZES = [:xs, :s, :m, :l, :xl, :xxl]

  include Comparable

  def initialize(size)
    @size = size
  end

  attr_reader :size

  def <=>(other)
    SIZES.index(size) <=> SIZES.index(other.size)
  end
end

medium = TShirt.new(:m)
large  = TShirt.new(:l)

p medium == large
p medium <  large
p medium <= large
p medium >  large
p medium >= large
