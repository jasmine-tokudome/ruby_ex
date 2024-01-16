ary = [ 1, 2, 3, 4, 5 ]
p ary.collect{ |i| i.odd? }

p ary.select{ |i| i.odd? }

p ary.map{ |i| i.odd? }

p ary.filter{ |i| i.odd? }

p ary.filter_map{ |i| i.odd? }
