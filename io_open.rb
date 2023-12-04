open('textfile.txt', "a+") do |f|
  data = f.read.upcase
  f.rewind
  f.puts data
end
