irb(main):002:0> t =  Thread.new{sleep 1}
=> #<Thread:0x00000001030ac9a0 (irb):2 run>
  irb(main):003:0> t =  Thread.new(3){|t| sleep t}
=> #<Thread:0x0000000105e10068 (irb):3 run>
  irb(main):004:0> t = Thread.new { sleep 100 }
=> #<Thread:0x0000000106c34c20 (irb):4 run>
  irb(main):005:0> t.status
=> "sleep"
irb(main):006:0> t.alive?
=> true
irb(main):007:1* t = Thread.new do
  irb(main):008:1*   Thread.stop
  irb(main):009:1*   puts "OK\n"
  irb(main):010:0> end
=> #<Thread:0x0000000106c16810 (irb):7 run>
  irb(main):011:1* t = Thread.new do
  irb(main):012:1*   Thread.stop
  irb(main):013:1*   puts "OK\n"
  irb(main):014:0> end
=> #<Thread:0x0000000106657668 (irb):11 run>
  irb(main):015:0> t.run
=> #<Thread:0x0000000106657668 (irb):11 run>
  OK
irb(main):016:1* t = Thread.new do
  irb(main):017:1*   Thread.exit
  irb(main):018:0> end
=> #<Thread:0x000000010647aed0 (irb):16 run>
