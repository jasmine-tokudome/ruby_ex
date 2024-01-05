irb(main):001:0> a={"apple" => "fruit","coffee" => "drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):002:0> a.class
=> Hash
irb(main):003:0> Hash["apple","fruit","coffee","drink"]
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):004:0> a=Hash.new
=> {}
irb(main):005:0> a["apple"]
=> nil
irb(main):006:0> a=Hash.new("NONE")
=> {}
irb(main):007:0> a["apple"]
=> "NONE"
irb(main):008:0> a
=> {}
irb(main):009:0> a=Hash.new{|hash,key|hash[key]="NONE"}
=> {}
irb(main):010:0>
  irb(main):011:0>
  irb(main):012:0> a["apple"]
=> "NONE"
irb(main):013:0> a=Hash.new("NONE")
=> {}
irb(main):014:0> a.default
=> "NONE"
irb(main):015:0> a["apple"]
=> "NONE"
irb(main):016:0> a.default="Not exists"
=> "Not exists"
irb(main):017:0> a["apple"]
=> "Not exists"
irb(main):018:0> a={"apple" => "fruit","coffee" => "drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):019:0> a["apple"]
=> "fruit"
irb(main):020:0> a={"apple" => "fruit","coffee" => "drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):021:0> a.keys
=> ["apple", "coffee"]
irb(main):022:0> a.values
=> ["fruit", "drink"]
irb(main):023:0> a={1=>"a",2=>"b",3=>"c",4=>"d"}
=> {1=>"a", 2=>"b", 3=>"c", 4=>"d"}
irb(main):024:0> a.values_at(1,3)
=> ["a", "c"]
irb(main):025:0> a={1=>"a",2=>"b",3=>"c",4=>"d"}
=> {1=>"a", 2=>"b", 3=>"c", 4=>"d"}
irb(main):026:0> a.fetch(5."NONE")
Traceback (most recent call last):
  3: from /usr/bin/irb:23:in `<main>'
        2: from /usr/bin/irb:23:in `load'
        1: from /Library/Ruby/Gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
SyntaxError ((irb):26: syntax error, unexpected tSTRING_BEG)
a.fetch(5."NONE")
^
  (irb):26: syntax error, unexpected ')', expecting end-of-input
a.fetch(5."NONE")
^
  irb(main):027:0> a.fetch(5,"NONE")
=> "NONE"
irb(main):028:0> a.fetch(5){|key|key%2==0}
=> false
irb(main):029:0> a={1=>"a",2=>"b",3=>"c",4=>"d"}
=> {1=>"a", 2=>"b", 3=>"c", 4=>"d"}
irb(main):030:0> a.select{|key,value|key%2==0}
=> {2=>"b", 4=>"d"}
