class Hoge
  def huga1; end
end

class Hoge
  def huga2; end
  alias :huga3 :huga1
  undef :huga2
end

p Hoge.instance_methods(false)
