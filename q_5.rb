(1..10).each
       .reverse_each
       .each do |i|
  puts i
end

(1..10).each \
       .reverse_each \
       .each do |i|
  puts i
end

(1..10).each.
  reverse_each.
  each do |i|
  puts i
end

(1..10).to_a.each.
  reverse_each.
  each do |i|
  puts i
end
