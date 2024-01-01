irb(main):006:0> 'abcdefg'[1,3]
=> "bcd"
irb(main):007:0> 'abcdefg'[1,3]
=> "bcd"
irb(main):008:0> 'abcdefg'.slice(1,3)
=> "bcd"
irb(main):009:0> 'abcdefg'[-2,3]
=> "fg"
irb(main):010:0> a = 'abcdefg'
=> "abcdefg"
irb(main):011:0> a.slice!(1,3)
=> "bcd"
irb(main):012:0> puts a
aefg
=> nil
