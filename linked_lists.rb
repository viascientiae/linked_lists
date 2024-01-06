class LinkedList

  def initialize(value)
    @head = Node.new(value, nil)
  end

  # adds a new node containing 'value' to the end of the list
  def append(value)
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node.next_node = Node.new(value, nil)
  end

  # adds a new node containing 'value' to the start of the list
  def prepend(value)
    @head = Node.new(value, @head)
  end

  # returns the total number of nodes in the list
  def size
    counter = 0
    current_node = @head

    while current_node != nil
      counter += 1
      current_node = current_node.next_node
    end

    counter
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
    counter = 0
    current_node = @head

    while current_node != nil
      return current_node if counter == index
      count += 1
      current_node = current_node.next_node
    end

    nil
  end

  # removes the last element from the list
  def pop

  end

  # returns true if the passed in value is in the list and otherwise returns false
  def contains?(value)
    current_node = @head

    while current_node != nil
      return true if current_node.value == value
      current_node = current_node.next_node
    end

    false
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
