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

def search_tree?(array)
  root = array_to_tree(array)
  search?(root, min=nil, max=nil)
end

def search?(node, min, max)
  return true if node.nil?

  return false if min && node.data < min

  return false if max && node.data > max

  search?(node.left, min, node.data) && search?(node.right, node.data, max)
end

puts search_tree?([10, 4, 12])
# => true  p tree

puts search_tree?([10, 5, 7])
# => false