require_relative 'linkedlist.rb'

class Stack
  attr_accessor :top

  def initialize
    @top = nil
  end

  def push(number)
    new_node = Node.new(number)
    if @top.nil?
      @top = new_node
      @top.next_node = nil
    else
      new_node.next_node = @top
      @top = new_node
    end
  end
  
  def pop
    return nil if @top.nil?
    temp = @top.value
    @top = @top.next_node
    return temp
  end

  def long_min
    return true if @top.nil?
    min_val = @top.value
    current = @top.next_node
    while current.nil? == false
      min_val = current.value if current.value < min_val
      current = current.next_node
    end
    min_val
  end
end
stack = Stack.new
stack.push(3)
stack.push(5)
# p stack.pop
# => 5

stack.push(200)
stack.push(7)
# puts stack.pop
# => 7

# puts stack.pop
# => 2

# puts stack.pop
# => 3
# list = LinkedList.new
# nd = Node.new(3)
# p nd

# p stack.long_min
