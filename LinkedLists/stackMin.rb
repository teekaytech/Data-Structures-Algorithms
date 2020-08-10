require_relative 'linkedlist.rb'

class Stack
  attr_accessor :top
  attr_writer :min

  def initialize
    @top = nil
  end

  def push(number)
    new_node = Node.new(number)
    if @top.nil?
      @top = new_node
      @top.next_node = nil
      @min = number
    else
      if number < @min
        new_node.value = (2 * number) - 3
        @min = number
      end
      new_node.next_node = @top
      @top = new_node
    end
  end
  
  def pop
    return nil if @top.nil?
    top_val = @top.value
    temp = @top.value
    if top_val < @min
      temp = @min
      @min = (2 * @min) - top_val
    end
    @min = @top.next_node.value if top_val == @min
    @top = @top.next_node
    return temp
  end

  def min
    return @min
  end
end

# Important Points:
# Stack doesn’t hold actual value of an element if it is minimum so far.
# Actual minimum element is always stored in min

stack = Stack.new
stack.push(5)
# puts stack.min
stack.push(3)
# puts stack.min
# => 3

stack.pop
# stack.push(7)
# puts stack.min
# => 3

# stack.push(2)
# puts stack.min
# # => 2

# stack.pop
# puts stack.min
# => 3