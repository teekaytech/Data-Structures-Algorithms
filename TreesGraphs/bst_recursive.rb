class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  attr_accessor :root, :output

  def initialize()
    @root = nil
    @output = []
  end

  def insert(node, root=@root)
    return @root = node if @root.nil?

    if node.data < root.data
      return root.left = node if root.left.nil?

      insert(node, root.left)
    else
      return root.right = node if root.right.nil?

      insert(node, root.right)
    end
  end

  def in_order(node = @root)
    return if node.nil?

    in_order(node.left)
    @output.push(node.data)
    in_order(node.right)

    @output
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each do |e|
    tree.insert(Node.new(e))
  end
  tree.in_order
end

p binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"