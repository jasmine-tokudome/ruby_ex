class BaseClass
  private

  def greet
    puts "Hello World!"
  end
end

class ChildClass < BaseClass
  public :greet
end

ChildClass.new.greet
