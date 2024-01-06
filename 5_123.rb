irb(main):001:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):002:0> a["apple"]="red"
=> "red"
irb(main):003:0> a
=> {"apple"=>"red", "coffee"=>"drink"}
irb(main):004:0> a["orange"]="orange"
=> "orange"
irb(main):005:0> a
=> {"apple"=>"red", "coffee"=>"drink", "orange"=>"orange"}
irb(main):006:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):007:0> a.delete("apple")
=> "fruit"
irb(main):008:0> a
=> {"coffee"=>"drink"}
irb(main):009:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):010:0> a.reject{|key,value|value=="drink"}
=> {"apple"=>"fruit"}
irb(main):011:0> a
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):012:0> a.reject!{|key,value|value=="drink"}
=> {"apple"=>"fruit"}
irb(main):013:0> a
=> {"apple"=>"fruit"}
irb(main):014:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):015:0> a.object_id
=> 2878299300
irb(main):016:0> a.replace({"orange"=>"fruit","tee"=>"drink"})
=> {"orange"=>"fruit", "tee"=>"drink"}
irb(main):017:0> a.object_id
=> 2878299300
irb(main):018:0> a
=> {"orange"=>"fruit", "tee"=>"drink"}
irb(main):019:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):020:0> a.shift
=> ["apple", "fruit"]
irb(main):021:0> a
=> {"coffee"=>"drink"}
irb(main):022:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):023:0> a.merge({"orange"=>"fruit","tee"=>"drink","apple"=>"fruit"})
=> {"apple"=>"fruit", "coffee"=>"drink", "orange"=>"fruit", "tee"=>"drink"}
irb(main):024:0> a
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):025:0> a.merge({"orange"=>"fruit","tee"=>"drink"}){|key,self_val,other_val|self_val}
=> {"apple"=>"fruit", "coffee"=>"drink", "orange"=>"fruit", "tee"=>"drink"}
irb(main):026:0> a
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):027:0> a.merge!({"orange"=>"fruit","tee"=>"drink","apple"=>"fruit"})
=> {"apple"=>"fruit", "coffee"=>"drink", "orange"=>"fruit", "tee"=>"drink"}
irb(main):028:0> a
=> {"apple"=>"fruit", "coffee"=>"drink", "orange"=>"fruit", "tee"=>"drink"}
irb(main):029:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):030:0> a.invert
=> {"fruit"=>"apple", "drink"=>"coffee"}
irb(main):031:0> {"orange"=>"fruit","coffee"=>"drink","apple"=>"fruit","tee"=>"drink"}.invert
=> {"fruit"=>"apple", "drink"=>"tee"}
irb(main):032:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):033:0> a.clear
=> {}
irb(main):034:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):035:0>
  irb(main):036:0>
  irb(main):037:0>
  irb(main):038:0> a.size
=> 2
irb(main):039:0> a.empty?
=> false
irb(main):040:0> a={"apple"=>"fruit","coffee"=>"drink"}
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):041:0> a.key?("apple")
=> true
irb(main):042:0> a.key?("orange")
=> false
irb(main):043:0> a
=> {"apple"=>"fruit", "coffee"=>"drink"}
irb(main):044:0> a.value?("fruit")
=> true
irb(main):045:0> a.key?("foods")
=> false
