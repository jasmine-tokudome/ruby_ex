module M
  def hoge
    puts "hoge"
  end
end

class A
  extend M
end

A.hoge
