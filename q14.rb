["foo: abc", "bar: 100"].each do |i|
  p i.slice(/[0-9]+/)&.to_i
end
