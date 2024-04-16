module A
  B = 42

  def f
    21
  end
end

A.module_eval do
  def self.f
    p B
    p Module.nesting
  end
end

B = 15

A.f
