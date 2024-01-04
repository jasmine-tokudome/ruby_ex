irb(main):001:0> [1,3,5,2,4,6].sort{|a,b|a<=>b}
=> [1, 2, 3, 4, 5, 6]
irb(main):002:0> [1,1,2,3,3].uniq
=> [1, 2, 3]
irb(main):003:0> [1,nil,2,nil,3].compact
=> [1, 2, 3]
irb(main):004:0> [1,2,3,4,5].reverse
=> [5, 4, 3, 2, 1]
irb(main):005:0> [[[1,2],3],[[4,5],6]].flatten
=> [1, 2, 3, 4, 5, 6]
irb(main):006:0> [[[1,2],3],[[4,5],6]].flatten(1)
=> [[1, 2], 3, [4, 5], 6]
irb(main):007:0> [1,2,3,4,5].map{|n|n*2}
=> [2, 4, 6, 8, 10]
irb(main):008:0> [1,2,3,4,5].shuffle
=> [3, 4, 5, 1, 2]
irb(main):009:0> [1,2].product(["a","b","c"])
=> [[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"]]
irb(main):010:0> [1,2].zip(["a","b"])
=> [[1, "a"], [2, "b"]]
irb(main):011:0> [1,2].zip(["a","b"],["x","y"])
=> [[1, "a", "x"], [2, "b", "y"]]
irb(main):012:0> [1,2]*4
=> [1, 2, 1, 2, 1, 2, 1, 2]
