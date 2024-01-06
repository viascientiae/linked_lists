class LinkedList

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def append(value)
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node.next_node = Node.new(value, nil)
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  def size
    counter = 0
    current_node = @head

    while current_node != nil
      counter += 1
      current_node = current_node.next_node
    end

    counter
  end

  def head
    @head
  end

  def tail
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
    end

    current_node
  end

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

  def pop
    return nil if @head.nil?
    return @head = nil if @head.next_node.nil?

    current_node = @head
    current_node = current_node.next_node while current_node.next_node.next_node != nil
    current_node.next_node = nil
  end

  def contains?(value)
    current_node = @head

    while current_node != nil
      return true if current_node.value == value
      current_node = current_node.next_node
    end

    false
  end

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
