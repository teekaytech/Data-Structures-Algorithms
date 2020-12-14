def tree_height(tree_as_list)
  heights = []
  (tree_as_list.length - 1).downto(0) do |i|

  initial_height = tree_as_list[i] == 0 ? 0 : 1

  left_child_height = tree_as_list[2*i + 1].nil? ? nil : heights[heights.length - i - 1]
  right_child_height = tree_as_list[2*i + 2].nil? ? nil : heights[heights.length - i - 2]

  total_height = initial_height + [left_child_height || 0,right_child_height || 0].max
  heights.push(total_height)
 end
 heights[-1]
end

puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4