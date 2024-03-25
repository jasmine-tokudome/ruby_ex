x = ["abc", "defgk", "lopq"]

p x.sort{|a,b| a.size <=> b.size}

p x.sort{|a,b| a.size - b.size}
