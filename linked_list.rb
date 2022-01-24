class LinkedList
  def initalize; end

  def append(value)
    # Create new node
    # Point last node to new node
  end

  def prepend(value)
    # Grab old 1st node
    # Create new node
    # Point new node to old 1st node
  end

  def size
    # Loop infinitely
    # Add 1 for each iteration
    # If nil is returned, end loop & Return value
    # If node is returned, continue onto next node
  end

  def head; end

  def tail; end

  def at(index)
    # Get next node index + 1 times
    # If nil is returned, return nil (/ Throw error)
    # if value is found, return value
  end

  def pop
    # Loop infinitely
    # Keep 2nd to last & last node & next node, repeat
    # When next node == nil:
    # Kill last node
    # Remap 2nd to last node to nil to indicate tail
  end

  def contains?(value)
    # Loop indef
    # get next node, check Node.value for value; if match -> True
    # If no match && next node returns nil -> False
  end

  def find(value)
    # Loop indef
    # Set iterator to 0
    # Get next node, check Node.value for value; if match -> Return iterator
    # Add 1 to iterator, continue to next node until match is found
    # If no match is found && Next node returns nil -> return nil
  end

  def to_s
    # Setup empty string
    # Loop until next returns nil
    # Each iteration, add Node.value to string
    # Then add ' -> ' to string until loop is exited
    # Return string
  end
end

class Node
  attr_accessor :value

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
