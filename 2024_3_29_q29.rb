letters = catch(:done) do
  ("a".."z").each do |a|
    ("a".."z").each do |b|
      ("a".."z").each do |c|
        if a < b && b < c
          throw [a,b,c], :done
        end
      end
    end
  end
end

puts letters.join
