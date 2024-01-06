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
    return nil if index < 0

    counter = 0
    current_node = @head

    while current_node != nil
      return current_node if counter == index
      counter += 1
      current_node = current_node.next_node
    end

    nil
  end

  # removes the last element from the list
  def pop
    return nil if @head.nil?
    return @head = nil if @head.next_node.nil?

    current_node = @head
    current_node = current_node.next_node while current_node.next_node.next_node != nil
    current_node.next_node = nil
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
    index = 0
    current_node = @head

    while current_node != nil
      return index if current_node.value == value
      index += 1
      current_node = current_node.next_node
    end

    nil
  end

  # represent your LinkedList objects as strings, so you can print them out and preview them in the console
  # the format should be: ( value ) -> ( value ) ->  ( value ) -> nil
  def to_s
    string = ""
    current_node = @head

    while current_node != nil
      string += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end

    string += "nil"
    string
  end

end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
