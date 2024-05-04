class Tshirt
    SIZES = [:xs, :s, :m, :l, :xl, :xxl]

    include Comparable

    def initialize(size)
        @size = size
    end

    attr_reader :size

    def <=>(other)
        SIZES.index(size) <=> SIZE.index(other.size)
    end
end

medium = Tshirt.new(:m)
large = Tshirt.new(:l)

p medium == large
p medium < large
p medium <= large
p medium > large
p medium >= large
