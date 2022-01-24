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
    temp = @head
    second = nil

    until temp.nil?
      if temp.next_node.nil?
        if temp == @head
          temp = @head
          @head = nil
          return temp
        end

        second.next_node = nil unless second.nil?
        return temp
      end
      second = temp
      temp = temp.next_node
    end
  end

  def contains?(value)
    temp = @head
    until temp.nil?
      return true if temp.value == value

      temp = temp.next_node
    end
    false
  end

  def find(value)
    i = 0
    temp = @head
    loop do
      return nil if temp.nil?
      return i if temp.value == value

      temp = temp.next_node
      i += 1
    end
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
