irb(main):001:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):002:0> a.class
=> Array
irb(main):003:0> Array[1,2,3]
=> [1, 2, 3]
irb(main):004:0> Array.new(3,"str")
=> ["str", "str", "str"]
irb(main):005:0> Array.new([1,2,3])
=> [1, 2, 3]
irb(main):006:0> Array.new(3){|i|i*3}
=> [0, 3, 6]
irb(main):007:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):008:0> a<<4
=> [1, 2, 3, 4]
irb(main):009:0> a.concat[5,6]
=> nil
irb(main):010:0> a.concat[5,6]
=> nil
irb(main):011:0> a
=> [1, 2, 3, 4]
irb(main):012:0> a.concat[5]
=> nil
irb(main):013:0> a
=> [1, 2, 3, 4]
irb(main):014:0> a <<[5,6]
=> [1, 2, 3, 4, [5, 6]]
irb(main):015:0> a.insert(3,9)
=> [1, 2, 3, 9, 4, [5, 6]]
irb(main):016:0> a.object_id
=> 2408117600
irb(main):017:0> b = a + [10]
=> [1, 2, 3, 9, 4, [5, 6], 10]
irb(main):018:0> b.object_id
=> 2408273160
irb(main):019:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):020:0> a.unshift(10)
=> [10, 1, 2, 3]
irb(main):021:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):022:0> a[1] = 10
=> 10
irb(main):023:0> a
=> [1, 10, 3]
irb(main):024:0> a[1..2] = [11,12]
=> [11, 12]
irb(main):025:0> a
=> [1, 11, 12]
irb(main):026:0> a[8] = 8
=> 8
irb(main):027:0> a
=> [1, 11, 12, nil, nil, nil, nil, nil, 8]
irb(main):028:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):029:0> a.fill("s")
=> ["s", "s", "s"]
irb(main):030:0> a.fill("t",1..2)
=> ["s", "t", "t"]
irb(main):031:0> a
=> ["s", "t", "t"]
irb(main):032:0> a.fill(1..2){|index|index}
=> ["s", 1, 2]
irb(main):033:0> a=[1,2,3]
=> [1, 2, 3]
irb(main):034:0> a.object_id
=> 2408163720
irb(main):035:0> a=[1,2,3]
=> [1, 2, 3]
irb(main):036:0> a.object_id
=> 2408053200
irb(main):037:0> a.replace([4,5,6])
=> [4, 5, 6]
irb(main):038:0> a.object_id
=> 2408053200
