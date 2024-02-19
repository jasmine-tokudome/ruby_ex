a = [1,2,5,7,8]
b = [1,3,6,7,9]
c = nil || a & b | a && a | b

p c

d = nil || a & b
p d

e = nil || a & b | a
p e

f = nil || a & b | a && a
p f
