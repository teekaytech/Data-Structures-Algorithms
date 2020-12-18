def connected_graph?(graph)
  all_nodes = graph.keys
  current_node = graph.keys[0]
  nodes_visited = [current_node]
  stack = []
  graph[current_node].reverse.map{|c| stack.push(c)}

  until stack.empty?
    current_node = stack.pop

    graph[current_node].reverse.each do |n|
      stack.push(n) if !nodes_visited.include?(n)
    end

    nodes_visited.push(current_node) if !nodes_visited.include?(current_node)
  end

  all_nodes.sort === nodes_visited.sort ? true : false
end

puts connected_graph?({
  0 => [2],
  1 => [4],
  2 => [0, 5, 3],
  3 => [5, 2],
  4 => [5, 1],
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2],
  1 => [0, 2],
  2 => [0, 1, 3, 4, 5],
  3 => [2, 4],
  4 => [3, 2],
  5 => [2]
})
# => true