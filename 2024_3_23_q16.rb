module M1
end
module M2
end
class Cls1
  include M1
end
class Cls2 < Cls1
  p self.ancestors
  include M2
end
