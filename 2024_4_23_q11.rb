words = ["apple", "banana", "cabbage"]
pop = Proc.new { words.pop }
3.times{ puts pop.call }
