require_relative 'linkedlist.rb'

class Queue
  attr_accessor :front, :rear

  def initialize
    list = LinkedList.new
    @front = list.head
    @rear = list.tail
  end

  def add(number)
    new_node = Node.new(number)
    if @front.nil?
      @front = new_node
      @rear = new_node
    else
      @rear.next_node = new_node
      @rear = new_node
    end
  end
  
  def remove
    return -1 if @front.nil?
    removed_front = @front
    @front = @front.next_node
    return removed_front.value
  end
end

queue = Queue.new
p queue.add(3)
p queue.add(5)
puts queue.remove
p queue.rear
p queue.front
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7

puts queue.remove
# => -1