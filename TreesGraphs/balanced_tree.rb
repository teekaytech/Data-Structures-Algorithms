require_relative '../LinkedLists/stack.rb'

class Node
	attr_reader :data
  attr_accessor :left, :right

  def initialize data
    @data = data
  end
end

def array_to_tree(array, i = 0)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)
  node
end

def height(node)
  return 0 if node.nil?

  lh = height(node.left)
  rh = height(node.right)
  return lh + 1 if lh > rh

  return rh + 1
end

def balanced_tree?(array)
  root = array_to_tree(array)
	balanced?(root)
end

def balanced? (node)
  return true if node.nil?
  left_height = height(node.left)
  right_height = height(node.right)
  return false if (left_height - right_height).abs > 1
  balanced?(node.left) && balanced?(node.right)
end

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true