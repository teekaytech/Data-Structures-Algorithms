def depth_first_search(graph)
  next_node = hash_graph.keys[0]
  nodes_visited = [next_node]

  
end

p depth_first_search({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]