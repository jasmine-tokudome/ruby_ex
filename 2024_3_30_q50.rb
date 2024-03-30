require 'forwardable'

class List
  extend Forwardable

  def initialize
    @contents = []
  end

  def_delegator :@contents, :push
  def_delegator :@contents, :[]
end

list = List.new
list.push("a")
list.push("b")
list.push("c")
p list[1]
