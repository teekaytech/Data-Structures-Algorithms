require_relative 'lib/node.rb'

class LinkedList
  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def add(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def add_at(index, item)
    current_node = get_node(index)
    
    new_node = Node.new(item)
    if @head.nil?
      @head = new_node
    elsif index.zero?
      new_node.next_node = @head
      @head = new_node
    else
      prev_node = get_node(index-1)
      prev_node.next_node = new_node
      new_node.next_node = current_node
    end
  end

  def get_node(index)
    current_node = @head
    current_index = 0
    while current_node != nil
      return current_node if current_index == index
      current_node = current_node.next_node
      current_index += 1
    end
  end

  def get(index)
    return get_node(index).value if get_node(index)
  end

  def remove(index)
    current_node = get_node(index)
    return nil unless current_node
    
    if index.zero?
      @head = current_node.next_node
      current_node = nil
    else
      prev_node = get_node(index - 1)
      prev_node.next_node = current_node.next_node
    end
  end

  def count_list
    return 0 if @head.nil?
    counts = 1
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
      counts += 1
    end
    counts
  end
end

list = LinkedList.new
list.add(10)
list.add(200)

p list
# llist.add(5)
# llist.add_at(1, 15)

# llist.remove(0)
# p llist.count_list

# p node1.next_node

# list.add(3)
# list.add(5)
# list.add_at(1, 11)
# p list.add_at(0, 13)

# puts list.get(2)
# => 11

# puts list.get(3)
# => 5
# list.add(8)
# list.add(3)
# list.add_at(1, 5)
# list.add_at(2, 4)
# list.remove(1)

#  p list.add_at(0, 8)
#  p list.get(0)