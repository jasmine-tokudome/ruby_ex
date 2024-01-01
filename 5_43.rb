irb(main):013:0> 'abcdefg'["bc"]
=> "bc"
irb(main):014:0> 'abcdefg'.slice(2)
=> "c"
irb(main):015:0> 'abcdefg'[2]
=> "c"
irb(main):016:0> 'abcdefg'.slice(2)
=> "c"
irb(main):017:0> 'abcdefg'[-2]
=> "f"
irb(main):018:0> a = 'abcdefg'
=> "abcdefg"
irb(main):019:0> a.slice!(2)
=> "c"
irb(main):020:0> puts a
abdefg
=> nil
irb(main):021:0>
