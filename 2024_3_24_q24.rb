p (1..Float::INFINITY).lazy.map{|x|
  x**2
}.take(3).inject(0,&:+)

