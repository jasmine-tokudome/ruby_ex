class Hoge
  def method_missing(m, *args)
    p "called:" + m.to_s
    super
  end
end

Hoge.new.no_method
