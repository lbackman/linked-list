# lib/linked_list.rb

require 'node'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    # Creates a new instance of the Node class at the end of the list
  end

  def prepend(value)
    # Creates a new instance of the Node class at the beginning of the list
  end

  def size
    # Returns the number of node instances in 'this' instance of LinkedList
  end

  def head
    # Returns the value of the first node
  end

  def tail
    # Returns the value of the last node
  end

  def at(index)
    # Returns the value of the node at the given index
  end

  def pop
    # Removes the last node (pointing at null)
    # In effect, removes the pointer and reroutes the pointer before it
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
    # The pointer from the previous skips to the next one
  end

  def to_s
    # Prints the LinkedList objects as:
    # ( value ) -> ( value ) -> ( value ) -> nil
  end
end