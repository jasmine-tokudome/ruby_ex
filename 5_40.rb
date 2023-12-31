irb(main):001:0> 'abcdefg'[2]
=> "c"
irb(main):002:0> 'abcdefg'.slice(2)
=> "c"
irb(main):003:0> 'abcdefg'.[2]
Traceback (most recent call last):
  3: from /usr/bin/irb:23:in `<main>'
        2: from /usr/bin/irb:23:in `load'
        1: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
SyntaxError ((irb):3: syntax error, unexpected '[')
'abcdefg'.[2]
^
  irb(main):004:0> 'abcdefg'[-2]
=> "f"
irb(main):005:0> a = 'abcdefg'
=> "abcdefg"
irb(main):006:0> a.slice!(2)
=> "c"
irb(main):007:0> puts a
abdefg
=> nil
