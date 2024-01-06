class LinkedList

  def initialize(value)
    @head = Node.new(value, nil)
  end

  # adds a new node containing 'value' to the end of the list
  def append(value)

  end

  # adds a new node containing 'value' to the start of the list
  def prepend(value)

  end

  # returns the total number of nodes in the list
  def size

  end

  # returns the first node in the list
  def head
    @head
  end

  # returns the last node in the list
  def tail
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node
  end

  # returns the node at the given index
  def at(index)

  end

  # removes the last element from the list
  def pop

  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(value)

  end

  #returns the index of the node containing value, or nil if not found
  def find(value)

  end

  # represent your LinkedList objects as strings, so you can print them out and preview them in the console
  # the format should be: ( value ) -> ( value ) ->  ( value ) -> nil
  def to_s

  end

end

class Node
  attr_accessor :value, :next_node

  def initialize(value = 0, next_node = 0)
    @value = value
    @next_node = next_node
  end

  def value(value)
    @value = value
  end

  def next_node(next_node)
    @next_node = next_node
  end

end
