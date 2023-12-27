3.times do |i|
  Thread.start(i) do |index|
    p "thread-#{index} start"
  end
end
