1: prc0 = Proc.new( nil )
2: prc1 = Proc.new(|a|a)
3:
4: p prc0.source_location
5: p prc1.source_location
