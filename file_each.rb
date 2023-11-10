file=File.open("sample5.txt")
file.each_line do |line|
  print line
end
file.close
