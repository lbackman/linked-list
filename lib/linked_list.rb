# lib/linked_list.rb

require 'node'

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    # Creates a new instance of the Node class at the end of the list
    if @head.nil?
      prepend(value)
    else
      temp_node = @head
      temp_node = temp_node.next_node until temp_node.next_node.nil?

      new_node = Node.new
      new_node.data = value
      temp_node.next_node = new_node
    end
  end

  def prepend(value)
    # Creates a new instance of the Node class at the beginning of the list
    new_node = Node.new
    new_node.data = value
    new_node.next_node = @head
    @head = new_node
  end

  def size
    # Returns the number of node instances in 'this' instance of LinkedList
    return 0 unless @head
    
    count = 1
    temp_node = @head
    until temp_node.next_node.nil?
      temp_node = temp_node.next_node
      count += 1
    end
    count
  end

  def head
    # Returns the value of the first node
    @head ? @head.data : nil
  end

  def tail
    # Returns the value of the last node
    if @head
      temp_node = @head
      temp_node = temp_node.next_node until temp_node.next_node.nil?

      temp_node.data
    else
      nil
    end
  end

  def at(index)
    # Returns the value of the node at the given index
    temp_node = @head
    index.times { temp_node = temp_node.next_node }
    temp_node.data
  end

  def pop
    # Removes the last node (pointing at null)
    # In effect, removes the pointer and reroutes the pointer before it
    return "NoMethodError" if @head.nil?

    if @head.next_node.nil?
      temp_val = @head.data
      @head = nil
      return temp_val
    end

    temp_node = @head
    temp_node = temp_node.next_node until temp_node.next_node.next_node.nil?
    
    temp_val = temp_node.next_node.data
    temp_node.next_node = nil
    temp_val
  end

  def contains?(value)
    # Returns true/false depending on if the given value is in the list
  end

  def find(value)
    # If the given value exists, return the index of the first node
    # Else returns nil
  end

  def insert_at(index, value)
    # Inserts a node with the given value at the given index.
    # The pointer before starts pointing to the new node
  end

  def remove_at(index)
    # Removes the node at the given index
    # The pointer from the previous skips to the following one
  end

  def to_s
    # Prints the LinkedList objects as:
    # ( value ) -> ( value ) -> ( value ) -> nil
    unless @head.nil?
      temp_node = @head
      output = ''
      until temp_node.nil?
        output << "#{temp_node.data} -> "
        temp_node = temp_node.next_node
      end
      output << "nil"
    else
      output = '-> nil'
    end
    output
  end
end