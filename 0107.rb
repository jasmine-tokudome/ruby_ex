irb(main):001:0> def hoge(n)
  irb(main):002:1>   unless n != 3
                       irb(main):003:2>     "hello"
                       irb(main):004:2>   elsif n == 5
                       irb(main):005:2>     "world"
                       irb(main):006:2>   end
  irb(main):007:1> end
Traceback (most recent call last):
  3: from /usr/bin/irb:23:in `<main>'
        2: from /usr/bin/irb:23:in `load'
        1: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
SyntaxError ((irb):4: syntax error, unexpected elsif, expecting end)
elsif n == 5
^~~~~
irb(main):008:0> def hoge(n)
  irb(main):009:1>   unless n != 3
                       irb(main):010:2>     "hello"
                       irb(main):011:2>   elsif n == 5
                       irb(main):012:2>     "world"
                       irb(main):013:2>   end
  irb(main):014:1> end
Traceback (most recent call last):
  3: from /usr/bin/irb:23:in `<main>'
        2: from /usr/bin/irb:23:in `load'
        1: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
SyntaxError ((irb):11: syntax error, unexpected elsif, expecting end)
elsif n == 5
^~~~~
irb(main):015:0>
  irb(main):016:0> str = ''
=> ""
irb(main):017:0> str.concat hoge(3)
Traceback (most recent call last):
  4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
        2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
1: from (irb):17
NoMethodError (undefined method `hoge' for main:Object)
irb(main):018:0> str.concat hoge(5)
Traceback (most recent call last):
        5: from /usr/bin/irb:23:in `<main>'
        4: from /usr/bin/irb:23:in `load'
3: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):18
        1: from (irb):18:in `rescue in irb_binding'
NoMethodError (undefined method `hoge' for main:Object)
irb(main):019:0>
  irb(main):020:0> p [1, 2, 3].inject{|x, y| x + y ** 2} rescue p $!
14
=> 14
irb(main):021:0> p [1, 2, 3].inject(0){|x, y| x + y ** 2} rescue p $!
14
=> 14
irb(main):022:0> p [1, 2, 3].inject([]){|x, y| x << y ** 2} rescue p $!
[1, 4, 9]
=> [1, 4, 9]
irb(main):023:0> p [1, 2, 3].inject do|x, y| x + y ** 2 end rescue p $!
#<LocalJumpError: no block given>
=> #<LocalJumpError: no block given>
  irb(main):024:0> str = "Liberty Fish   \r\n"
=> "Liberty Fish   \r\n"
irb(main):025:0> str.chop
=> "Liberty Fish   "
irb(main):026:0> p str
"Liberty Fish   \r\n"
=> "Liberty Fish   \r\n"
irb(main):027:0> str.chop!
=> "Liberty Fish   "
irb(main):028:0> a = "Ruby"
=> "Ruby"
irb(main):029:0> b = " on Rails"
=> " on Rails"
irb(main):030:0> a.append b
Traceback (most recent call last):
  4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
        2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
1: from (irb):30
NoMethodError (undefined method `append' for "Ruby":String)
irb(main):031:0> (1..10).each_cons(3) {|arr| p arr }
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]
=> nil
irb(main):032:0> (1..10).each_slice(3) {|arr| p arr }
[1, 2, 3]
[4, 5, 6]
[7, 8, 9]
[10]
=> nil
irb(main):033:0> arr = (1..30).to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
irb(main):034:0> container = []
=> []
irb(main):035:0>
irb(main):036:0> arr.each_cons(7) do |i|
irb(main):037:1*   container << i
irb(main):038:1> end
=> nil
irb(main):039:0>
irb(main):040:0> p container.length
24
=> 24
irb(main):041:0> p container
[[1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 8], [3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 10], [5, 6, 7, 8, 9, 10, 11], [6, 7, 8, 9, 10, 11, 12], [7, 8, 9, 10, 11, 12, 13], [8, 9, 10, 11, 12, 13, 14], [9, 10, 11, 12, 13, 14, 15], [10, 11, 12, 13, 14, 15, 16], [11, 12, 13, 14, 15, 16, 17], [12, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 19], [14, 15, 16, 17, 18, 19, 20], [15, 16, 17, 18, 19, 20, 21], [16, 17, 18, 19, 20, 21, 22], [17, 18, 19, 20, 21, 22, 23], [18, 19, 20, 21, 22, 23, 24], [19, 20, 21, 22, 23, 24, 25], [20, 21, 22, 23, 24, 25, 26], [21, 22, 23, 24, 25, 26, 27], [22, 23, 24, 25, 26, 27, 28], [23, 24, 25, 26, 27, 28, 29], [24, 25, 26, 27, 28, 29, 30]]
=> [[1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 8], [3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 10], [5, 6, 7, 8, 9, 10, 11], [6, 7, 8, 9, 10, 11, 12], [7, 8, 9, 10, 11, 12, 13], [8, 9, 10, 11, 12, 13, 14], [9, 10, 11, 12, 13, 14, 15], [10, 11, 12, 13, 14, 15, 16], [11, 12, 13, 14, 15, 16, 17], [12, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 19], [14, 15, 16, 17, 18, 19, 20], [15, 16, 17, 18, 19, 20, 21], [16, 17, 18, 19, 20, 21, 22], [17, 18, 19, 20, 21, 22, 23], [18, 19, 20, 21, 22, 23, 24], [19, 20, 21, 22, 23, 24, 25], [20, 21, 22, 23, 24, 25, 26], [21, 22, 23, 24, 25, 26, 27], [22, 23, 24, 25, 26, 27, 28], [23, 24, 25, 26, 27, 28, 29], [24, 25, 26, 27, 28, 29, 30]]
irb(main):042:0> pp container
[[1, 2, 3, 4, 5, 6, 7],
 [2, 3, 4, 5, 6, 7, 8],
 [3, 4, 5, 6, 7, 8, 9],
 [4, 5, 6, 7, 8, 9, 10],
 [5, 6, 7, 8, 9, 10, 11],
 [6, 7, 8, 9, 10, 11, 12],
 [7, 8, 9, 10, 11, 12, 13],
 [8, 9, 10, 11, 12, 13, 14],
 [9, 10, 11, 12, 13, 14, 15],
 [10, 11, 12, 13, 14, 15, 16],
 [11, 12, 13, 14, 15, 16, 17],
 [12, 13, 14, 15, 16, 17, 18],
 [13, 14, 15, 16, 17, 18, 19],
 [14, 15, 16, 17, 18, 19, 20],
 [15, 16, 17, 18, 19, 20, 21],
 [16, 17, 18, 19, 20, 21, 22],
 [17, 18, 19, 20, 21, 22, 23],
 [18, 19, 20, 21, 22, 23, 24],
 [19, 20, 21, 22, 23, 24, 25],
 [20, 21, 22, 23, 24, 25, 26],
 [21, 22, 23, 24, 25, 26, 27],
 [22, 23, 24, 25, 26, 27, 28],
 [23, 24, 25, 26, 27, 28, 29],
 [24, 25, 26, 27, 28, 29, 30]]
=> [[1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 8], [3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 10], [5, 6, 7, 8, 9, 10, 11], [6, 7, 8, 9, 10, 11, 12], [7, 8, 9, 10, 11, 12, 13], [8, 9, 10, 11, 12, 13, 14], [9, 10, 11, 12, 13, 14, 15], [10, 11, 12, 13, 14, 15, 16], [11, 12, 13, 14, 15, 16, 17], [12, 13, 14, 15, 16, 17, 18], [13, 14, 15, 16, 17, 18, 19], [14, 15, 16, 17, 18, 19, 20], [15, 16, 17, 18, 19, 20, 21], [16, 17, 18, 19, 20, 21, 22], [17, 18, 19, 20, 21, 22, 23], [18, 19, 20, 21, 22, 23, 24], [19, 20, 21, 22, 23, 24, 25], [20, 21, 22, 23, 24, 25, 26], [21, 22, 23, 24, 25, 26, 27], [22, 23, 24, 25, 26, 27, 28], [23, 24, 25, 26, 27, 28, 29], [24, 25, 26, 27, 28, 29, 30]]
irb(main):043:0> class Foo
irb(main):044:1>   attr_accessor :foo
irb(main):045:1>
irb(main):046:1>   def initialize
irb(main):047:2>     @foo = 0
irb(main):048:2>   end
irb(main):049:1> end
=> :initialize
irb(main):050:0>
irb(main):051:0> foo1 = Foo.new
=> #<Foo:0x0000000115110c18 @foo=0>
irb(main):052:0> foo1.foo += 1
=> 1
irb(main):053:0> foo2 = Foo.new
=> #<Foo:0x00000001151494c8 @foo=0>
irb(main):054:0> foo2.foo += 2
=> 2
irb(main):055:0>
irb(main):056:0> puts "#{foo1.foo}/#{foo2.foo}"
1/2
=> nil
irb(main):057:0> proc = hash.default_proc
Traceback (most recent call last):
        4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):57
NoMethodError (undefined method `default_proc' for -677140833078460585:Integer)
irb(main):058:0> proc = hash.default_proc
Traceback (most recent call last):
        5: from /usr/bin/irb:23:in `<main>'
4: from /usr/bin/irb:23:in `load'
        3: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):58
        1: from (irb):58:in `rescue in irb_binding'
NoMethodError (undefined method `default_proc' for -677140833078460585:Integer)
irb(main):059:0> hash.default_proc.call(1,2)
Traceback (most recent call last):
        5: from /usr/bin/irb:23:in `<main>'
        4: from /usr/bin/irb:23:in `load'
3: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):59
        1: from (irb):59:in `rescue in irb_binding'
NoMethodError (undefined method `default_proc' for -677140833078460585:Integer)
irb(main):060:0> hash.default_proc = nil
Traceback (most recent call last):
  5: from /usr/bin/irb:23:in `<main>'
        4: from /usr/bin/irb:23:in `load'
        3: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
2: from (irb):60
1: from (irb):60:in `rescue in irb_binding'
NoMethodError (undefined method `default_proc=' for -677140833078460585:Integer)
irb(main):061:0> str = "abcdefgh"
=> "abcdefgh"
irb(main):062:0> puts str[4..6]
efg
=> nil
irb(main):063:0> puts str[-3..6]
fg
=> nil
irb(main):064:0> puts str[4...-1]
efg
=> nil
irb(main):065:0> puts str[4..0]

=> nil
irb(main):066:0> puts str[-4...7]
efg
=> nil
irb(main):067:0> hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}
=> {:price=>100, :order_code=>200, :order_date=>"2018/09/20", :tax=>0.8}
irb(main):068:0>
irb(main):069:0> p hash.values
[100, 200, "2018/09/20", 0.8]
=> [100, 200, "2018/09/20", 0.8]
irb(main):070:0> p hash.[](:price)
100
=> 100
irb(main):071:0> p hash.[](:bazz)
nil
=> nil
irb(main):072:0> p hash.key(:price, :tax)
Traceback (most recent call last):
        5: from /usr/bin/irb:23:in `<main>'
4: from /usr/bin/irb:23:in `load'
        3: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):72
        1: from (irb):72:in `key'
ArgumentError (wrong number of arguments (given 2, expected 1))
irb(main):073:0> p hash.values(:price, :tax)
Traceback (most recent call last):
  6: from /usr/bin/irb:23:in `<main>'
        5: from /usr/bin/irb:23:in `load'
        4: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
3: from (irb):73
2: from (irb):73:in `rescue in irb_binding'
        1: from (irb):73:in `values'
ArgumentError (wrong number of arguments (given 2, expected 0))
irb(main):074:0> p hash.values.[](:price, :tax)
Traceback (most recent call last):
        6: from /usr/bin/irb:23:in `<main>'
5: from /usr/bin/irb:23:in `load'
        4: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        3: from (irb):74
        2: from (irb):74:in `rescue in irb_binding'
1: from (irb):74:in `[]'
TypeError (no implicit conversion of Symbol into Integer)
irb(main):075:0> hoge = 0
=> 0
irb(main):076:0> def hoge
irb(main):077:1>   x = 0
irb(main):078:1>   5.times do |i|
irb(main):079:2*     x += 1
irb(main):080:2>   end
irb(main):081:1>   x
irb(main):082:1> end
=> :hoge
irb(main):083:0> puts hoge
0
=> nil
irb(main):084:0> hash = {a: 100, b: 200}
=> {:a=>100, :b=>200}
irb(main):085:0>
irb(main):086:0> def splat_hash(a, b)
irb(main):087:1>   p a
irb(main):088:1>   p b
irb(main):089:1> end
=> :splat_hash
irb(main):090:0>
irb(main):091:0> splat_hash(*hash)
[:a, 100]
[:b, 200]
=> [:b, 200]
irb(main):092:0> arr = Array(3){"a"}
=> [3]
irb(main):093:0> arr.first.upcase
Traceback (most recent call last):
        4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):93
NoMethodError (undefined method `upcase' for 3:Integer)
Did you mean?  case
irb(main):094:0> p arr
[3]
=> [3]
irb(main):095:0> Array(3){"a"}.first.upcase
Traceback (most recent call last):
        4: from /usr/bin/irb:23:in `<main>'
3: from /usr/bin/irb:23:in `load'
        2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):95
NoMethodError (undefined method `upcase' for 3:Integer)
Did you mean?  case
               irb(main):096:0> a = [1]
=> [1]
irb(main):097:0> a[5] = 10
=> 10
irb(main):098:0> a.compact
=> [1, 10]
irb(main):099:0> p a
[1, nil, nil, nil, nil, 10]
=> [1, nil, nil, nil, nil, 10]
irb(main):100:0> def hoge
  irb(main):101:1>   x = 10
  irb(main):102:1>   Y = x < 10 ? "C" : "D"
  irb(main):103:1>   puts Y
  irb(main):104:1> end
Traceback (most recent call last):
  3: from /usr/bin/irb:23:in `<main>'
        2: from /usr/bin/irb:23:in `load'
        1: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
SyntaxError ((irb):102: dynamic constant assignment)
Y = x < 10 ? "C" : "D"
^
  irb(main):105:0> hoge
=> 0
irb(main):106:0> p "Apple-Banana-Lemon".split /(-)/
["Apple", "-", "Banana", "-", "Lemon"]
=> ["Apple", "-", "Banana", "-", "Lemon"]
irb(main):107:0> p ({a: 100, b: 100}).invert
{100=>:b}
=> {100=>:b}
irb(main):108:0> a = [1,2,3,4]
=> [1, 2, 3, 4]
irb(main):109:0> p a.slice(2,1)
[3]
=> [3]
irb(main):110:0> puts "80"
80
=> nil
irb(main):111:0> puts 0xFF
255
=> nil
irb(main):112:0> puts 7.to_s(3)
21
=> nil
irb(main):113:0> puts "7".binary
Traceback (most recent call last):
  4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
        2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
1: from (irb):113
NoMethodError (undefined method `binary' for "7":String)
irb(main):114:0> def hoge
irb(main):115:1>   x = 0
irb(main):116:1>   (1...5).each do |i|
irb(main):117:2*     x += 1
irb(main):118:2>   end
irb(main):119:1>   x
irb(main):120:1> end
=> :hoge
irb(main):121:0> puts hoge
0
=> nil
irb(main):122:0> str = "aaabbcccddd"
=> "aaabbcccddd"
irb(main):123:0> p str.scan("c")
["c", "c", "c"]
=> ["c", "c", "c"]
irb(main):124:0> a = "Ruby"
=> "Ruby"
irb(main):125:0> b = " on Rails"
=> " on Rails"
irb(main):126:0> a.concat b
=> "Ruby on Rails"
irb(main):127:0> a.reverse
=> "sliaR no ybuR"
irb(main):128:0> p a.index("R", 1)
8
=> 8
irb(main):129:0> a
=> "Ruby on Rails"
irb(main):130:0> a = [-1, 2, 3, 4, 5]
=> [-1, 2, 3, 4, 5]
irb(main):131:0> b = (4..6).to_a
=> [4, 5, 6]
irb(main):132:0> puts a.inject(:+) + b.inject(:+)
28
=> nil
irb(main):133:0> puts (a | b).inject(:-).abs + (a & b).inject(:+).abs
30
=> nil
irb(main):134:0> puts (a | b).inject(:*) + b.inject(0) { |x, y| x + y ** 3 }
-315
=> nil
irb(main):135:0> puts ((a || b).map(&:succ).inject(:*) * (a && b).inject(:*).abs2 + 29)
29
=> nil
