filename = "buffering.txt"
File.open(filename, "w") do |file|
  file.sync = true
  3.times do |i|
    file.write("a" * 5)
    puts "#{i+1}回目: #{File.size(filename)}"
  end
end
puts "終了後: #{File.size(filename)}"
p File.read(filename)
