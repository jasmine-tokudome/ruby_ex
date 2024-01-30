# arr=["apple", "banana", "orange"].flatten!
# arr.each do |i|
#   puts i
# end

p "======================"

arr = [["apple"],["banana"],["orange"]].flatten
arr.each do |i|
  puts i
end

p "======================"

arr = ["apple", "banana", "orange"].reverse
arr.each do |i|
  puts i
end

p "======================"

arr = %|apple banana orange|
arr.each do |i|
  puts i
end
