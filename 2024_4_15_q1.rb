module M
  @@val = 75

  pp @@val

  class Parent
    @@val = 100
    pp @@val
  end

  pp @@val

  class Child < Parent
    @@val += 50 # @@val = 100 + 50
    pp @@val
  end

  pp @@val

  if Child < Parent
    @@val += 25 # @@val = 75 + 25
    pp @@val
  else
    @@val += 30 # @@val = 75 + 30
    pp @@val
  end

  pp @@val
end

p M::Child.class_variable_get(:@@val)
