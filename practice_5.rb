def cels2fahr(cels)
  return cels * 9.0 / 5.0 + 32.0
end

def cels2cels(fahr)
  return (fahr.to_f -32) * 5.0 / 9.0
end

1.upto(100) do |i|
  print i, " ", fahr2cels(i), "\n"
end

def dice
  return Random.rand(6) + 1
end

def dice10
  ret = 0
  10.times do
    ret += dice
  end
  ret
end

def prime?(num)
  return false if num < 2
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

1.upto(10) do |n|
  puts n if prime?(n)
end
