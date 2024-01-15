irb(main):001> p "cocoa".chars
["c", "o", "c", "o", "a"]
=> ["c", "o", "c", "o", "a"]
irb(main):002> p "cocoa".chars.tally
{"c"=>2, "o"=>2, "a"=>1}
=> {"c"=>2, "o"=>2, "a"=>1}
irb(main):003> puts "blah blah blah".sub(/blah/,"yay")
yay blah blah
=> nil
irb(main):004> puts "blah blah blah".gsub(/blah/,"yay")
yay yay yay
=> nil
irb(main):005> puts "blah blah blah".replace(/blah/,"yay")
(irb):5:in `replace': wrong number of arguments (given 2, expected 1) (ArgumentError)
	from (irb):5:in `<main>'
	from <internal:kernel>:187:in `loop'
from /Users/tokudome/.rbenv/versions/3.3.0/lib/ruby/gems/3.3.0/gems/irb-1.11.0/exe/irb:9:in `<top (required)>'
	from /Users/tokudome/.rbenv/versions/3.3.0/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.3.0/bin/irb:25:in `<main>'
irb(main):006> puts "blah blah blah".replace_all(/blah/,"yay")
(irb):6:in `<main>': undefined method `replace_all' for an instance of String (NoMethodError)
Did you mean?  replace
	from <internal:kernel>:187:in `loop'
from /Users/tokudome/.rbenv/versions/3.3.0/lib/ruby/gems/3.3.0/gems/irb-1.11.0/exe/irb:9:in `<top (required)>'
	from /Users/tokudome/.rbenv/versions/3.3.0/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.3.0/bin/irb:25:in `<main>'
