irb(main):001:0> [1,2,3].join(",")
=> "1,2,3"
irb(main):002:0> [1,2,3].length
=> 3
irb(main):003:0> [].length
=> 0
irb(main):004:0> [].empty?
=> true
irb(main):005:0> [1,nil,nil,3,nil,4].length
=> 6
irb(main):006:0> [1,nil,nil,3,nil,4].nitems
Traceback (most recent call last):
  4: from /usr/bin/irb:23:in `<main>'
        3: from /usr/bin/irb:23:in `load'
        2: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
1: from (irb):6
NoMethodError (undefined method `nitems' for [1, nil, nil, 3, nil, 4]:Array)
irb(main):007:0> a=[1,3,5,2,4,6]
=> [1, 3, 5, 2, 4, 6]
irb(main):008:0> a.sort
=> [1, 2, 3, 4, 5, 6]
irb(main):009:0> a
=> [1, 3, 5, 2, 4, 6]
irb(main):010:0> a.sort!
=> [1, 2, 3, 4, 5, 6]
irb(main):011:0> a
=> [1, 2, 3, 4, 5, 6]
