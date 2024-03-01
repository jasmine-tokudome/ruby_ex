irb(main):002:0> a.to_s
=> "1.2"
irb(main):003:0> Object.new.inspect
=> "#<Object:0x00000001082e8b60>"
irb(main):004:0> 1.23&2
(irb):4:in `<main>': undefined method `&' for 1.23:Float (NoMethodError)
	from /Users/tokudome/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `<main>'
irb(main):005:0> 1.9.ceil
=> 2
irb(main):006:0> 1.9.floor
=> 1
irb(main):007:0> 1.9.round
=> 2
irb(main):008:0> 1.9.turncate
(irb):8:in `<main>': undefined method `turncate' for 1.9:Float (NoMethodError)
Did you mean?  truncate
	from /Users/tokudome/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `load'
from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `<main>'
irb(main):009:0> -1.1.ceil
=> -1
irb(main):010:0> -1.1.floor
=> -2
irb(main):011:0> -1.1.round
=> -1
irb(main):012:0> -1.1.ruencate
(irb):12:in `<main>': undefined method `ruencate' for -1.1:Float (NoMethodError)
Did you mean?  truncate
from /Users/tokudome/.rbenv/versions/3.2.3/lib/ruby/gems/3.2.0/gems/irb-1.6.2/exe/irb:11:in `<top (required)>'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `load'
	from /Users/tokudome/.rbenv/versions/3.2.3/bin/irb:25:in `<main>'