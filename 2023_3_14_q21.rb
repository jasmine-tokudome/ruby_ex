# class String
#   alias :hoge, :reverse
# end
#
# p "12345".hoge
#
# class String
#   alias :reverse, :hoge
# end
#
# p "12345".hoge

class String
  alias hoge reverse
end

p "12345".hoge

class String
  alias reverse hoge
end

p "12345".hoge
