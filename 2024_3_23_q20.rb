class C
  def hoge
    puts "A"
  end
end

module M
  refine C do
    def hoge
      puts "B"
    end
  end
end

c = C.new
c.hoge
using M
c.hoge
