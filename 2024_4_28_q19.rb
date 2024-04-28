p (1..).lazy.flat_map {|z|
  (1..z).flat_map {|x|
    (x..z).select {|y|
      x**2 + y**2 == z**2
    }.map {|y|
      [x,y,z]
    }
  }
}.take(3).to_a