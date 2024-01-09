irb(main):001:0> s1="Hoge"
=> "Hoge"
irb(main):002:0> s2="Fuga"
=> "Fuga"
irb(main):003:0> s1.concat(s2)
=> "HogeFuga"
irb(main):004:0> s1
=> "HogeFuga"
irb(main):005:0> s1.chop
=> "HogeFug"
irb(main):006:0> s1
=> "HogeFuga"
irb(main):007:0> s1.chomp
=> "HogeFuga"
irb(main):008:0> s1
=> "HogeFuga"
irb(main):009:0> s1+s2
=> "HogeFugaFuga"
irb(main):010:0> s1
=> "HogeFuga"
irb(main):011:0> (1..10).each do |i| puts i end
1
2
3
4
5
6
7
8
9
10
=> 1..10
irb(main):012:0> HOGE="hoge"
=> "hoge"
irb(main):013:0> HOGE.gsub!("hoge","piyo")
=> "piyo"
irb(main):014:0> print HOGE
piyo=> nil
irb(main):015:0> p ?A
"A"
=> "A"
