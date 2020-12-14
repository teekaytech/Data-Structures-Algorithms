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

  def insert(node)
    return @root = node if @root.nil?

    current = @root
    until current.nil?
      if node.data < current.data
        return current.left = node if current.left.nil?

        current = current.left
      else
        return current.right = node if current.right.nil?

        current = current.right
      end
    end
  end

  def height(root = @root)
    return 0 if root.nil?

    lh = height(root.left)
    rh = height(root.right)

    return lh + 1 if lh > rh

    return rh + 1
  end

  def search(value, root = @root)
    return false if root.nil?

    if value == root.data
      return true;
    elsif value < root.data
      return search(value, root.left)
    else
      return search(value, root.right)
    end
  end

  def in_order(node = @root)
    return if node.nil?

    in_order(node.left)
    @output.push(node.data)
    in_order(node.right)

    @output.join(' ')
  end

  def pre_order(node = @root)
    return if node.nil?

    @output.push(node.data)
    pre_order(node.left)
    pre_order(node.right)

    @output.join(' ')
  end

end


def binary_search_tree(array, tree)
  array.each do |e|
    tree.insert(Node.new(e))
  end
end

tree = BST.new
binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13], tree)
# p tree.pre_order
p tree.in_order
p tree.search(1)
p tree.height
# => "8 3 1 6 4 7 10 14 13"