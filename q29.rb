a=["a","b","c"]
b=[1,2,3]
a.zip(b).each{|x|p x}
a.zip(b){|x|p x}
[a,b].transpose.each{|x,y|p [x,y]}
