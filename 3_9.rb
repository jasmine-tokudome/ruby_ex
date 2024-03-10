a=[1,2,3,5,8]
b=[1,3,6,7,8]
c=false || true ? true && false ? a | b : a & b : b;
p c

a=[1,2,5,7,8]
b=[1,3,6,7,9]
c=nil || a & b | a && a | b
p c

p true.equal?(true)
p nil.eql?(NilClass)
p String.new.equal?(String.new)
p 1.equal?(1)
