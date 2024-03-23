module Mod1;end
module Mod2;end
class Cls1
  prepend Mod1
end
class Cls2 < Cls1
  prepend Mod2
end
p Cls2.ancestors
