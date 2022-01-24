# frozen_string_literal: true

# Class that contains the linked list methods, each instance contains the head of the list.
class LinkedList
  attr_reader :head

  def initalize
    @head = nil
  end

  def append(value)
    temp = Node.new(value)

    if @head.nil?
      @head = temp
    else
      node = @head
      node = node.next_node until node.next_node.nil?
      node.next_node = temp
    end
  end

  def prepend(value)
    temp = Node.new(value)

    unless @head.nil?
      n = @head
      temp.next_node = n
    end

    @head = temp
  end

  def size
    i = 0
    temp = @head
    loop do
      return i if temp.nil?

      i += 1
      temp = temp.next_node
    end
  end

  def tail
    temp = @head
    temp = temp.next_node until temp.next_node.nil?
    temp
  end

  def at(index)
    temp = @head
    index.times do
      temp = temp.next_node
      return nil if temp.nil?
    end
    temp
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

# Class the elements of a linked list are made of
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
