class Baz1
  def public_method1;1;end
  public
  def public_method2;2;end
  protected
  def protected_method1;1;end
  def protected_method2;2;end
  private
  def private_method1;1;end
end

Baz1.new.public_method1
Baz1.new.public_method2
# Baz1.new.protected_method1
# Baz1.new.protected_method2
Baz1.new.private_method1
