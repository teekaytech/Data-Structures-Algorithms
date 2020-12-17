def graph(hash_graph)
  next_node = hash_graph.keys[0]
  nodes_visited = [next_node]

  while !next_node.equal?(4)
    next_node = hash_graph[next_node][0]
    nodes_visited.push(next_node)
  end
  nodes_visited
end

hash = {
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
}

p graph(
  {
    0 => [1, 6],
    1 => [2, 0, 3, 4],
    2 => [3, 1],
    3 => [6, 1, 2],
    4 => [1, 5, 6],
    5 => [4],
    6 => [4, 3, 0]
  }
)

p graph(hash)
# => [0, 2, 5, 4]
