class LinkedList
  def initalize; end
end

class Node
  attr_accessor :value

  def initialize(value)
    @value = value
    @next_node = nil
  end
end
