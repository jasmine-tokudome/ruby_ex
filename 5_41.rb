irb(main):001:0> 'abcdefg'[1..3]
=> "bcd"
irb(main):002:0> 'abcdefg'.slice(1..3)
=> "bcd"
irb(main):003:0> a = 'abcdefg'
=> "abcdefg"
irb(main):004:0> a.slice!(1..3)
=> "bcd"
irb(main):005:0> puts a
aefg
=> nil
