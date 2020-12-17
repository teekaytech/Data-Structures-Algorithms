def bfs(graph)
  next_node = graph.keys[0]
  nodes_visited = [next_node]
  queue = [next_node]

  while nodes_visited.length < graph.length
    neighbor = graph.select { |node, values| node.equal?(next_node)}
    next_node = graph[queue.shift][0]
    queue.push(next_node)
    neighbor.values.first.map { |nd| nodes_visited.push(nd) if !nodes_visited.include?(nd) }
  end
  nodes_visited
end

p bfs({
  0 => [2],
  1 => [4],
  2 => [5, 0, 3],
  3 => [2],
  4 => [1, 5],
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]